@echo off
:: ========================================================
:: Antigravity 2.0 繁體中文套件 - 安裝工具
:: ========================================================
chcp 65001 >nul
title Antigravity 繁體中文套件 - 安裝

echo.
echo ========================================================
echo   Antigravity 2.0 繁體中文套件
echo ========================================================
echo.

:: 檢查 Node.js 是否可用
echo [前置檢查] 檢查 Node.js 環境...
node -v >nul 2>nul
if errorlevel 1 (
    echo.
    echo [錯誤] 找不到可用的 Node.js。
    echo   請前往 https://nodejs.org/ 安裝 LTS 版本，
    echo   並確認 node 已加入系統 PATH。
    echo   若出現「存取被拒」，代表 PATH 上的 node.exe 異常，
    echo   請重新安裝 Node.js 並確認 PATH 設定。
    echo.
    pause
    exit /b 1
)

:: 檢查本地 @electron/asar 是否已安裝
if not exist "%~dp0node_modules\@electron\asar\bin\asar.js" (
    echo.
    echo [錯誤] 找不到本地 @electron/asar CLI。
    echo   請先在專案根目錄執行：
    echo     npm install
    echo   完成後再重新執行本安裝腳本。
    echo.
    pause
    exit /b 1
)

echo [前置檢查] Node.js 與 asar CLI 均已就緒。
echo.

echo [1/3] 正在偵測並關閉 Antigravity 程序...
taskkill /f /im Antigravity.exe /t >nul 2>nul
timeout /t 2 /nobreak >nul

echo.
echo [2/3] 正在套用繁體中文台灣用語本地化...
node "%~dp0localization_engine.js" %*

echo.
echo [3/3] 套用完成！
echo.
echo [注意] 請手動重新啟動 Antigravity 以生效。
echo.
pause
