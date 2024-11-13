@ECHO OFF
mode con cols=60 lines=20
title  「Hack Class Network」V1.0  by Xuanbo.top
color F2
echo 电子极域教室解除网络限制网络 V1.0  来自 Xuanbo.top
echo ------------------------------------------------------------
echo.
@echo off
:: 检查是否以管理员权限运行
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 本操作需要管理员权限，请求管理员权限中...
    PowerShell -Command "Start-Process '%~dpnx0' -Verb RunAs"
    exit /b
)
pause
taskkill /im MasterHelper.exe
sc stop tdnetfilter
echo ---------------------------
echo.
echo [System]:操作完成!
pause
start https://xuanbo.top/
