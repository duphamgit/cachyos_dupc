#!/bin/bash

# Thư mục chứa backup
DEST="$HOME/cachyos_dupc"

echo "--- Đang cập nhật danh sách phần mềm ---"
pacman -Qqe > "$DEST/pkglist.txt"
pacman -Qqem > "$DEST/aurlist.txt"

echo "--- Đang gom cấu hình hệ thống ---"

# Hàm copy an toàn: chỉ copy nếu thư mục nguồn tồn tại
safe_copy() {
    if [ -d "$1" ] || [ -f "$1" ]; then
        cp -rf "$1" "$2"
        echo "✅ Đã copy $1"
    else
        echo "⏩ Bỏ qua $1 (Không tìm thấy)"
    fi
}

# Danh sách các file/folder muốn backup
safe_copy ~/.zshrc "$DEST/"
safe_copy ~/.config/hypr "$DEST/.config/"
safe_copy ~/.config/waybar "$DEST/.config/"
safe_copy ~/.config/kitty "$DEST/.config/"
safe_copy ~/.config/rofi "$DEST/.config/"
safe_copy ~/.config/fastfetch "$DEST/.config/"
safe_copy ~/.config/OpenRGB "$DEST/.config/"

# Xóa rác nếu có
rm -rf "$DEST/.config/chromium"

echo "✅ Tất cả đã sẵn sàng!"
