echo off
cd /d "%~dp0"
chcp 65001
:: 【关键代码】让CMD窗口置顶，全程最上层
timeout /t 1 /nobreak >nul

echo.
echo Hello, Minghui Zhang
timeout /t 1 /nobreak >nul

echo.
echo 现在是11:00
echo 已经到【做饭+吃中午饭】的时间了~ ~ ~
echo 吃饭的时候看一会儿老友记吧~ ~ ~
echo.
echo 计划【上床时间】是11:50, 看课外书30min
echo 计划【睡觉时间】是12:20
echo.
echo 计划【起床时间】是1:00
echo 计划【工作时间】是1:20

timeout /t 1 /nobreak >nul

echo ####################打开【便笺】##################
explorer.exe shell:Appsfolder\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App
timeout /t 1 /nobreak >nul
call  python click_bianjian.py >nul
timeout /t 1 /nobreak >nul

echo.
:loop
echo 准备出发了就请输入'y'
set /p "input="

:: 判断输入是否为 y（不区分大小写）
if /i "%input%"=="y" (
    goto continue
) else (
    goto loop
)

:continue
echo.

echo ####################打开【便笺】##################
explorer.exe shell:Appsfolder\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App
timeout /t 1 /nobreak >nul
call  python click_bianjian.py >nul
@REM timeout /t 1 /nobreak >nul

echo.
echo 严格遵守时间欧
timeout /t 3 /nobreak >nul