# 🚀 DUPC - Dynamic Unix Personalization Controller

**dupc** là một công cụ dòng lệnh (CLI) mạnh mẽ giúp quản lý và chuyển đổi theme tức thì cho **Rofi** (App Launcher & File Browser) và **Waybar** trên môi trường Hyprland/Wayland.

![Cyberpunk Style](https://img.shields.io/badge/Style-Cyberpunk-ff007c?style=for-the-badge)
![Hyprland](https://img.shields.io/badge/Platform-Hyprland-00d2ff?style=for-the-badge)

---

## ✨ Features (Tính năng nổi bật)

- 🎨 **Instant Theme Swapping**: Thay đổi giao diện Rofi và Waybar ngay lập tức mà không cần restart lại toàn bộ hệ thống.
- 📁 **Separated Contexts**: Quản lý theme riêng biệt cho **App Launcher** (drun) và **File Browser** (fd/dmenu).
- ⚡ **Hot-Reload Waybar**: Sử dụng tín hiệu `SIGUSR2` để reload CSS Waybar mượt mà, không làm mất các icon ở System Tray.
- 🔗 **Symlink Logic**: Tự động quản lý các liên kết mềm (`current_theme.rasi`, `style.css`) để Hyprland luôn nhận đúng cấu hình.
- 🌫️ **Glassmorphism Support**: Tối ưu hóa cho hiệu ứng Blur và Shadow đặc trưng của Hyprland.
- 💡 **Built-in Hint**: Hệ thống trợ giúp lệnh tích hợp sẵn để bạn không bao giờ quên cú pháp.

---

## 🛠️ Installation (Cài đặt)

### 1. Cài đặt Script điều hướng
Copy script `dupc` vào thư mục thực thi của hệ thống:
```bash
sudo cp scripts/dupc /usr/local/bin/dupc
sudo chmod +x /usr/local/bin/dupc
