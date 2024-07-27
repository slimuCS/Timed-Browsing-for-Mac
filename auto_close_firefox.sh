#!/bin/bash
# 240725 create with chatGPT.

# 提示用户输入等待的分钟数
echo "请输入等待关闭 Firefox 的分钟数："
read minutes

# 提示用户输入休息后要做的事情
echo "请输入休息后要做的事情："
read message

# 计算等待的秒数
seconds=$((minutes * 60))

# 启动 Firefox
open -a "Firefox" --args -P "meow"

# 等待指定的秒数
sleep $seconds

# 函数：询问是否再使用一分钟
function ask_for_more_time() {
  result=$(osascript -e 'display dialog "时间到了，您是否需要再使用一分钟？" buttons {"再使用一分钟", "关闭"} default button "关闭"')
  echo $result
}

# 循环询问用户是否需要再使用一分钟
while true; do
  response=$(ask_for_more_time)
  if [[ $response == *"再使用一分钟"* ]]; then
    sleep 60
  else
    break
  fi
done


# 关闭 Firefox 应用程序
osascript -e 'quit app "Firefox"'

# 显示用户输入的休息后要做的事情
osascript -e "display dialog \"$message\" buttons {\"OK\"} default button \"OK\""

# 从 Dock 中移除 Firefox 图标
osascript -e 'tell application "System Events" to tell dock preferences to set autohide to false'
osascript -e 'tell application "System Events" to tell process "Dock" to click menu item "Remove from Dock" of menu "Options" of UI element "Firefox" of list 1 of group "Applications" of group "Dock" of process "Dock"'
osascript -e 'tell application "System Events" to tell dock preferences to set autohide to true'
