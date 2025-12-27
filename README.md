# 🐧 CachyOS Hyprland - Custom Dotfiles with DUPC

Bộ sưu tập cấu hình (Dotfiles) tối ưu cho **CachyOS Hyprland**. Được thiết kế với phong cách Cyberpunk, hiệu ứng kính mờ (Glassmorphism) sâu và tích hợp bộ công cụ **DUPC** giúp quản lý theme động cực kỳ mạnh mẽ.

![CachyOS](https://img.shields.io/badge/OS-CachyOS-00ff9f?style=for-the-badge&logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-00d2ff?style=for-the-badge)
![Waybar](https://img.shields.io/badge/Bar-Waybar-ff007c?style=for-the-badge)

---

## ✨ Điểm nổi bật (Features)

- 🚀 **Công cụ `dupc`**: Thay đổi theme Waybar và Rofi tức thì chỉ với một lệnh đơn giản.
- 🎨 **Cyberpunk V2 Style**: Tông màu Neon Pink & Cyan sắc sảo, tối ưu cho màn hình độ phân giải cao.
- 🔍 **Tìm kiếm toàn diện**: Rofi File Browser (`SUPER + F`) hỗ trợ quét cả các file ẩn (`hidden files`) trong toàn hệ thống.
- 🔄 **Hot-Reload**: Waybar tự động cập nhật giao diện ngay lập tức thông qua tín hiệu `SIGUSR2`.
- 💾 **Smart Backup**: Script tự động gom toàn bộ cấu hình và xuất danh sách phần mềm (Pacman/AUR).

---

## 🛠️ Quy trình cài đặt 3 bước (Setup Guide)

Sau khi bạn đã cài đặt xong bản gốc **CachyOS Hyprland**, hãy thực hiện lần lượt 3 bước sau đây:

1️⃣ Bước 1: Tải và Cài đặt tự động
Mở Terminal, clone repo này về máy và chạy script cài đặt cấu hình:
```bash
git clone https://github.com/duphamgit/cachyos_dupc
cd cachyos_dupc
chmod +x install.sh
./install.sh

2️⃣ Bước 2: Cài đặt Script điều hướng (DUPC)Mặc dù script cài đặt đã hỗ trợ, bạn hãy đảm bảo công cụ dupc đã sẵn sàng để có thể gọi từ bất cứ đâu trong hệ thống. Kiểm tra bằng lệnh:Bashdupc help
Nếu lệnh trên không hoạt động, hãy copy thủ công bằng lệnh sau:Bashsudo cp scripts/dupc /usr/local/bin/dupc
sudo chmod +x /usr/local/bin/dupc

3️⃣ Bước 3: Apply Theme và Sử dụngSau khi khởi động lại, hãy bắt đầu cá nhân hóa máy tính của bạn bằng cách sử dụng dupc help để xem hướng dẫn:Xem danh sách theme: dupc listĐổi theme Waybar: dupc theme waybar <tên_theme.css>Đổi theme Rofi: dupc theme rofi <tên_theme.rasi>⌨️ Phím tắt quan trọng (Keybindings)Phím tắtHành độngSUPER + SpaceMở Rofi App LauncherSUPER + FTìm kiếm toàn bộ file (Bao gồm cả file ẩn)SUPER + TMở Terminal (Ghostty/Kitty)SUPER + QĐóng cửa sổ hiện tạiSUPER + MThoát Hyprland
