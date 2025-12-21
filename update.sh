#!/bin/bash

# 1. Cập nhật danh sách phần mềm
echo "--- Đang cập nhật danh sách phần mềm ---"
pacman -Qqe > ~/cachyos_dupc/pkglist.txt
pacman -Qqem > ~/cachyos_dupc/aurlist.txt

# 2. Copy các file cấu hình quan trọng từ máy vào thư mục backup
echo "--- Đang gom cấu hình hệ thống ---"
cp ~/.zshrc ~/cachyos_dupc/
cp -rf ~/.config/hypr ~/cachyos_dupc/.config/
cp -rf ~/.config/waybar ~/cachyos_dupc/.config/
cp -rf ~/.config/kitty ~/cachyos_dupc/.config/
cp -rf ~/.config/rofi ~/cachyos_dupc/.config/
cp -rf ~/.config/neofetch ~/cachyos_dupc/.config/
# Bạn có thể thêm bất kỳ thư mục nào khác vào đây theo mẫu trên

# 3. Loại bỏ các file rác hoặc nhạy cảm nếu lỡ tay copy
rm -rf ~/cachyos_dupc/.config/chromium

echo "✅ Đã cập nhật xong tất cả file vào thư mục cachyos_dupc!"
