#!/usr/bin/env bash
# ========================================================
# Antigravity 2.0 简体中文套件 - macOS 安装工具
# ========================================================

# 切换到脚本所在目录
cd "$(dirname "$0")" || exit 1

echo ""
echo "========================================================"
echo "  Antigravity 2.0 简体中文套件"
echo "========================================================"
echo ""

# 前置检查：Node.js
echo "[前置检查] 检查 Node.js 环境..."
if ! command -v node &> /dev/null; then
    echo ""
    echo "[错误] 找不到可用的 Node.js。"
    echo "  请前往 https://nodejs.org/ 安装 LTS 版本，"
    echo "  并确认 node 已加入系统 PATH。"
    echo ""
    read -r -p "按下 Enter 键结束..."
    exit 1
fi

# 前置检查：本地 @electron/asar CLI
if [ ! -f "./node_modules/@electron/asar/bin/asar.js" ]; then
    echo ""
    echo "[错误] 找不到本地 @electron/asar CLI。"
    echo "  请先在项目根目录运行："
    echo "    npm install"
    echo "  完成后再重新运行本安装脚本。"
    echo ""
    read -r -p "按下 Enter 键结束..."
    exit 1
fi

echo "[前置检查] Node.js 与 asar CLI 均已就绪。"
echo ""

echo "[1/3] 正在检测并关闭 Antigravity 进程..."
pkill -f Antigravity > /dev/null 2>&1
sleep 2

echo ""
echo "[2/3] 正在应用简体中文本地化..."
node localization_engine.js "$@"

echo ""
echo "[3/3] 应用完成！"
echo ""
echo "[注意] 请手动重新启动 Antigravity 以生效。"
echo ""
read -r -p "按下 Enter 键结束..."
