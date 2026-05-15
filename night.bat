echo off
cd /d "%~dp0"
chcp 65001
:: 【关键代码】让CMD窗口置顶，全程最上层
timeout /t 1 /nobreak >nul

echo.
echo Hello, Minghui Zhang
timeout /t 1 /nobreak >nul

echo.
echo 现在是11:30
echo 已经到【总结】+【洗漱】的时间了~ ~ ~
echo 计划【睡觉时间】是12:30
timeout /t 1 /nobreak >nul

echo ####################打开【便笺】##################
explorer.exe shell:Appsfolder\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App
timeout /t 1 /nobreak >nul
call  python click_bianjian.py >nul
timeout /t 1 /nobreak >nul

echo.
:loop
echo 准备好之后输入'y',开始【总结】程序
set /p "input="

:: 判断输入是否为 y（不区分大小写）
if /i "%input%"=="y" (
    goto continue
) else (
    goto loop
)

:continue
echo.

echo ####################打开【学习日志】##################
echo 正在启动Edge并打开飞书学习日志...
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://dcnvt6u4x3md.feishu.cn/docx/HxqZdC0rxoA73QxDo4gc4L2XnJg"
timeout /t 1 /nobreak >nul

echo ####################打开【日记】##################
echo 正在启动Edge并打开WPS日记...
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://www.kdocs.cn/l/cdos38xnYyN7"
timeout /t 1 /nobreak >nul

echo ####################打开【便笺】##################
explorer.exe shell:Appsfolder\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App
timeout /t 1 /nobreak >nul
call  python click_bianjian.py >nul
timeout /t 1 /nobreak >nul

echo.
echo 请梳理学习日志~ 然后在日记中写一些有趣的事~
timeout /t 3 /nobreak >nul