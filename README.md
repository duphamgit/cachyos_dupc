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

Sau khi bạn đã cài đặt xong bản gốc **CachyOS Hyprland**, hãy thực hiện lần lượt bước sau đây:

Mở Terminal và thực hiện lệnh sau để tải repo và chạy script cài đặt tự động:

```bash
git clone https://github.com/duphamgit/cachyos_dupc
cd cachyos_dupc
chmod +x install.sh
./install.sh
```
Copy script dupc trong thư mục scripts vào /usr/local/bin/
```
sudo cp cachyos/scripts/dupc /usr/local/bin
```


Mở Terminal xem hướng dẫn cài đặt theme cho Waybar và Rofi 
```
dupc help
```
