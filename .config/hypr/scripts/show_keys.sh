#!/bin/bash

# 1. Fetch keybindings
binds=$(hyprctl binds)

# 2. Process raw data
parsed_data=$(echo "$binds" | awk '
    /^bind/ { if (m!="") print m "|" k "|" d "|" a; m=k=d=a="" }
    /modmask:/ { m=$2 }
    /key:/ { k=$2 }
    /dispatcher:/ { d=$2 }
    /arg:/ { $1=""; a=$0; sub(/^ /, "", a) }
    END { if (m!="") print m "|" k "|" d "|" a }
')

# 3. Convert modmask
convert_mod() {
    local mask=$1
    local res=""
    ((mask & 64)) && res+="Super+"
    ((mask & 4))  && res+="Ctrl+"
    ((mask & 1))  && res+="Shift+"
    ((mask & 8))  && res+="Alt+"
    echo "${res%+}"
}

# 4. English Dispatchers
friendly_dispatch() {
    case "$1" in
        "workspace") echo "Go to Workspace" ;;
        "movetoworkspace") echo "Move Window to" ;;
        "movefocus") echo "Focus Direction" ;;
        "exec") echo "Launch / Execute" ;;
        "killactive") echo "Close Window" ;;
        "togglefloating") echo "Toggle Float" ;;
        "togglesplit") echo "Toggle Split" ;;
        "togglespecialworkspace") echo "Special Workspace" ;;
        "hyprshot") echo "Screenshot" ;;
        *) echo "$1" ;; 
    esac
}

# 5. Build the final list (Using a different loop structure for safety)
final_output=""
while IFS="|" read -r m k d a; do
    if [ -z "$k" ]; then continue; fi
    
    mod_name=$(convert_mod "$m")
    action=$(friendly_dispatch "$d")
    
    # Tạo dòng và nối kèm dấu xuống dòng thực thụ
    line="[$mod_name + $k] | $action | $a"
    final_output+="${line}"$'\n'
done <<< "$parsed_data"

# 6. Align and display - CRITICAL: Must use quotes around "$final_output"
echo -e "$final_output" | column -t -s "|" | rofi -dmenu -i -p "Shortcuts" \
    -theme "~/.config/rofi/my_theme.rasi" \
    -theme-str 'window {width: 700px;} listview {lines: 25;}'
