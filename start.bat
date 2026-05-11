@echo off
chcp 65001
echo 正在启动微信...
start "" "D:\Weixin\Weixin.exe"

timeout /t 2 /nobreak >nul
:: 自动按回车 = 点击“进入微信”
powershell -command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ENTER}')"

echo 正在启动云梯...
start "" "E:\云梯\yunti\云梯.exe"

echo 正在连接云梯...
python click_ladder.py