#!/bin/bash

# Màu sắc cho thông báo
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🚀 Chào mừng tới bộ cài tự động DUPC...${NC}"

# 1. Cài đặt các gói từ kho chính (Official)
if [ -f pkglist.txt ]; then
    echo -e "${GREEN}📦 Đang cài đặt ứng dụng từ Official Repos...${NC}"
    sudo paru -S --needed --noconfirm - < pkglist.txt
fi

# 2. Cài đặt các gói từ AUR (Dùng paru hoặc yay)
if [ -f aurlist.txt ]; then
    echo -e "${GREEN}📦 Đang cài đặt ứng dụng từ AUR...${NC}"
    if command -v paru &> /dev/null; then
        paru -S --needed --noconfirm - < aurlist.txt
    else
        yay -S --needed --noconfirm - < aurlist.txt
    fi
fi

# 3. Khôi phục cấu hình
echo -e "${GREEN}🎨 Đang khôi phục cấu hình (.config & .zshrc)...${NC}"
cp -rf .config ~/
cp -f .zshrc ~/

echo -e "${BLUE}✅ Hoàn tất! Hệ thống của bạn đã sẵn sàng.${NC}"
