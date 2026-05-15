echo off
cd /d "%~dp0"
chcp 65001

timeout /t 1 /nobreak >nul

echo.
echo Hello, Minghui Zhang
timeout /t 1 /nobreak >nul

echo.
echo 现在是【5:00】

echo 已经到【健身】的时间了~ ~ ~
echo 计划【吃饭时间】是【12:30】
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
echo 加油做到力竭呦
timeout /t 3 /nobreak >nul