#!/bin/bash

# 提示使用者輸入內容
echo "Hey there, what u want today :)"

# 設定超時時間
timeout=20

# 開始計時
SECONDS=0

# 循環等待使用者輸入正確的回應
while true; do
  # 讀取使用者輸入
  read -t $((timeout - SECONDS)) response

  # 檢查是否超時
  if [ $? -eq 142 ]; then
    echo "Byeee(- -)/"
    exit 0
  fi

  # 檢查輸入是否為 "chill"
  if [ "$response" == "chill" ]; then
    break
  else
    echo "\(- -)"
  fi

  # 檢查是否超時
  if [ $SECONDS -ge $timeout ]; then
    echo "Byeee(- -)/"
    exit 0
  fi
done

# 提示使用者輸入等待的分鐘數
echo "請輸入等待關閉 Firefox 的分鐘數："
read minutes

# 提示使用者輸入休息後要做的事情，預設選項
printf "請輸入休息後要做的事情：\n1: "
read item1
printf "2: "
read item2
printf "3: "
read item3

# 將使用者輸入的內容組合成一個完整的訊息
message="1: $item1\n2: $item2\n3: $item3"

# 計算等待的秒數
seconds=$((minutes * 60))

# 啟動 Firefox 並指定配置檔
open -a "Firefox" --args -P "MyProfile"

# 等待 (seconds - 30) 秒後發送通知
sleep $((seconds - 30))

# 發送 30 秒倒計時通知
osascript -e 'display notification "30秒後將關閉 Firefox" with title "提醒"'

# 等待最後 30 秒
sleep 30

# 關閉 Firefox 應用程式
osascript -e 'quit app "Firefox"'

# 顯示使用者輸入的休息後要做的事情
osascript -e "display dialog \"$message\" buttons {\"OK\"} default button \"OK\" with title \"Reminder\""
