#!/usr/bin/env bash
# ========================================================
# Antigravity 2.0 繁體中文套件 - macOS 還原工具
# ========================================================

# 切換到腳本所在目錄
cd "$(dirname "$0")" || exit 1

echo ""
echo "========================================================"
echo "  Antigravity 2.0 繁體中文套件 - 還原"
echo "========================================================"
echo ""

# 前置檢查：Node.js
echo "[前置檢查] 檢查 Node.js 環境..."
if ! command -v node &> /dev/null; then
    echo ""
    echo "[錯誤] 找不到可用的 Node.js。"
    echo "  請前往 https://nodejs.org/ 安裝 LTS 版本，"
    echo "  並確認 node 已加入系統 PATH。"
    echo ""
    read -r -p "按下 Enter 鍵結束..."
    exit 1
fi

echo "[前置檢查] Node.js 已就緒。"
echo ""

echo "[1/3] 正在偵測並關閉 Antigravity 程序..."
pkill -f Antigravity > /dev/null 2>&1
sleep 2

echo ""
echo "[2/3] 正在還原官方原版檔案..."
node localization_engine.js --huifu "$@"

echo ""
echo "[3/3] 還原完成！"
echo ""
echo "[注意] Antigravity 已成功還原為官方英文原版狀態。"
echo ""
read -r -p "按下 Enter 鍵結束..."
