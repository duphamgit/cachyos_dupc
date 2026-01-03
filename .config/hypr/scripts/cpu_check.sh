#!/bin/bash

THRESHOLD=90
NOTIFICATION_SENT=false

while true; do
    # Cách lấy CPU load chính xác bằng lệnh 'top' với 2 lần lấy mẫu để có con số thực tế
    # -n2 giúp tránh việc lấy dữ liệu cũ từ lúc boot
    CPU_USAGE=$(top -bn2 -d 0.5 | grep "Cpu(s)" | tail -1 | awk '{print $2 + $4}')
    
    # Chuyển sang số nguyên để so sánh
    CPU_INT=${CPU_USAGE%.*}

    # Kiểm tra nếu CPU_INT không phải là số (phòng lỗi)
    if [[ ! "$CPU_INT" =~ ^[0-9]+$ ]]; then
        sleep 5
        continue
    fi

    if [ "$CPU_INT" -gt "$THRESHOLD" ]; then
        if [ "$NOTIFICATION_SENT" = false ]; then
            notify-send -u critical -i thermal-sensor "CPU Overloaded: $CPU_INT%" -h string:x-dunst-stack-tag:cpu_alert
            NOTIFICATION_SENT=true
        fi
    else
        # Chỉ reset cờ khi CPU đã thực sự hạ nhiệt xuống dưới ngưỡng
        if [ "$CPU_INT" -lt "$THRESHOLD" ]; then
            NOTIFICATION_SENT=false
        fi
    fi

    sleep 1
done
