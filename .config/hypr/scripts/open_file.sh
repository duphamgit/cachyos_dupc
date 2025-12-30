#!/bin/bash

FILE=$1

# Thoát nếu không có file nào được chọn
if [ -z "$FILE" ]; then
    exit 1
fi

# Lấy phần mở rộng của file (chuyển về chữ thường)
EXT="${FILE##*.}"
EXT=$(echo "$EXT" | tr '[:upper:]' '[:lower:]')

# Kiểm tra định dạng và mở bằng ứng dụng tương ứng
case "$EXT" in
    jpg|jpeg|png|gif|webp|svg)
        chromium --app="file://$FILE"
        ;;
    txt|md|conf|sh|py|js|json|lua|ini|css)
        # Vì micro chạy trong terminal, bạn cần gọi terminal (ghostty) để chạy nó
        ghostty -e micro "$FILE"
        ;;
    *)
        # Các loại file khác thì dùng mặc định hệ thống
        xdg-open "$FILE"
        ;;
esac
