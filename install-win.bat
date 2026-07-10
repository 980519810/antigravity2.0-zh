@echo off
:: ========================================================
:: Antigravity 2.0 简体中文套件 - 安装工具
:: ========================================================
chcp 65001 >nul
title Antigravity 简体中文套件 - 安装

echo.
echo ========================================================
echo   Antigravity 2.0 简体中文套件
echo ========================================================
echo.

:: 检查 Node.js 是否可用
echo [前置检查] 检查 Node.js 环境...
node -v >nul 2>nul
if errorlevel 1 (
    echo.
    echo [错误] 找不到可用的 Node.js。
    echo   请前往 https://nodejs.org/ 安装 LTS 版本，
    echo   并确认 node 已加入系统 PATH。
    echo   若出现「访问被拒」，代表 PATH 上的 node.exe 异常，
    echo   请重新安装 Node.js 并确认 PATH 设置。
    echo.
    pause
    exit /b 1
)

:: 检查本地 @electron/asar 是否已安装
if not exist "%~dp0node_modules\@electron\asar\bin\asar.js" (
    echo.
    echo [错误] 找不到本地 @electron/asar CLI。
    echo   请先在项目根目录运行：
    echo     npm install
    echo   完成后再重新运行本安装脚本。
    echo.
    pause
    exit /b 1
)

echo [前置检查] Node.js 与 asar CLI 均已就绪。
echo.

echo [1/3] 正在检测并关闭 Antigravity 进程...
taskkill /f /im Antigravity.exe /t >nul 2>nul
timeout /t 2 /nobreak >nul

echo.
echo [2/3] 正在应用简体中文本地化...
node "%~dp0localization_engine.js" %*

echo.
echo [3/3] 应用完成！
echo.
echo [注意] 请手动重新启动 Antigravity 以生效。
echo.
pause
