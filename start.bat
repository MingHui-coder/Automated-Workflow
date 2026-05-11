echo off
chcp 65001
timeout /t 5 /nobreak >nul
echo ################运行自定义启动程序###################
echo 正在启动微信...
start   "" "D:\Weixin\Weixin.exe"

timeout /t 2 /nobreak >nul
:: 自动按回车 = 点击“进入微信”
powershell -command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ENTER}')"

call  python click_wx.py >nul

echo 正在启动云梯...
start "" /d "E:\云梯\yunti" "云梯.exe"

echo 正在连接云梯...
start /b /wait python click_yt.py

echo 正在启动飞书...
start  "" "C:\Users\LENOVO\AppData\Local\Feishu\Feishu.exe"

call  python click_fs.py >nul

echo ####################打开学习文档##################
timeout /t 1 /nobreak >nul
echo 正在启动Edge并打开飞书文档...
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://dcnvt6u4x3md.feishu.cn/docx/HxqZdC0rxoA73QxDo4gc4L2XnJg"

echo ################完成自定义启动程序###################
timeout /t 5 /nobreak >nul
@REM call  python click_cmd.py >nul
cd /d C:\
exit 0