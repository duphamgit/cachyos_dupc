#!/bin/bash

# Thư mục chứa backup
DEST="$HOME/cachyos_dupc"

# Tạo thư mục nếu chưa có
mkdir -p "$DEST/scripts"
mkdir -p "$DEST/.config"

echo "--- Đang cập nhật danh sách phần mềm ---"

# Hàm xuất danh sách phần mềm an toàn
safe_export_pkg() {
    if $1 > "$2" 2>/dev/null; then
        echo "✅ Đã cập nhật $(basename "$2")"
    else
        echo "❌ Thất bại khi cập nhật $(basename "$2")"
    fi
}

# Sử dụng hàm để xuất danh sách
safe_export_pkg "pacman -Qqe" "$DEST/pkglist.txt"
safe_export_pkg "pacman -Qqem" "$DEST/aurlist.txt"

# Copy script dupc
if cp /usr/local/bin/dupc "$DEST/scripts/"; then
    echo "✅ Đã backup script dupc"
else
    echo "❌ Thất bại khi backup script dupc (Kiểm tra quyền hoặc file nguồn)"
fi

echo -e "\n--- Đang gom cấu hình hệ thống ---"

# Hàm copy an toàn (giữ nguyên của bạn nhưng tối ưu hiển thị)
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

echo -e "\n✨ Tất cả đã sẵn sàng trong: $DEST"
