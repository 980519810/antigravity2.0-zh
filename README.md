# Antigravity 2.0 简体中文套件

将 Antigravity 2.0 的界面翻译为简体中文。支持 Windows 与 macOS，提供一键安装与完整还原。

Antigravity 2.0 Simplified Chinese Localization Toolkit is an open-source project that translates the Antigravity 2.0 interface into Simplified Chinese. It works by unpacking and repacking the local Electron ASAR file, without modifying official core binaries or redistributing any official Antigravity files. The toolkit supports both Windows and macOS, provides one-click installation and full restoration, automatically creates backups, runs entirely on the user’s local machine, and carefully avoids translating code editors, terminals, input fields, debug consoles, and other areas where localization could interfere with development workflows.

---

## 简介

**Antigravity 2.0 简体中文套件**是一套开源的界面本地化工具，通过 ASAR 解包与重新打包机制，将 Antigravity 2.0 的英文界面翻译为简体中文。

- 不修改官方内核二进制文件
- 不分发官方 `app.asar` 或任何官方文件
- 支持一键安装与完整还原
- 所有操作在用户本机端运行

---

## 下载方式

### 方式一：GitHub Releases（推荐）

前往本项目的 [GitHub Releases](../../releases) 页面，下载最新版本的 `.zip` 压缩包。

1. 下载 `antigravity2-zh-hans-v*.zip`
2. 解压缩到任意目录
3. 在解压缩后的目录中运行：

```bash
npm install
```

> ⚠️ **注意**：请下载完整的 `.zip` 文件，不要只下载单一的 `.bat` 或 `.command` 文件。安装脚本需要搭配 `localization_engine.js`、`dicts/` 字典目录与 `package.json` 等文件才能正常运行。

> ⚠️ **注意**：Releases zip 中不包含 `node_modules/`，因此解压缩后仍需运行 `npm install` 安装依赖套件。

### 方式二：Git Clone

```bash
git clone https://github.com/980519810/antigravity2.0-zh.git
cd antigravity2.0-zh
npm install
```

> 请将 `<owner>` 替换为实际的 GitHub 账号名称。

---

## 功能特色

- 🌐 **简体中文界面**：涵盖主界面、设置页、Agent 管理、MCP／知识库页面等多个区域
- 🖥️ **跨平台支持**：同时支持 Windows 与 macOS
- 🔧 **一键安装**：双击脚本即可完成安装，无需手动操作
- 🔄 **完整还原**：随时可还原为官方英文原版
- 🛡️ **安全备份**：首次安装时自动备份官方 `app.asar`
- 📦 **离线运行**：使用本地 `@electron/asar`，不依赖 `npx` 动态下载
- 🎯 **精准翻译**：自动避开代码区、Terminal、编辑器等不应翻译的区域

---

## 重要提醒：官方软件更新后须重新安装

> ⚠️ **每次 Antigravity 官方发布更新后，简体中文界面可能会消失。这是正常现象。**

Antigravity 官方更新时，会重新覆盖 `app.asar` 文件，导致先前注入的简体中文本地化内容被移除。

**这是正常情况，并非套件故障。**

只要在更新后重新运行安装脚本，即可恢复简体中文界面：

- **Windows**：双击运行 `install-win.bat`
- **macOS**：双击运行 `install-macos.command`

> 💡 建议在每次 Antigravity 更新完成后，养成重新运行安装脚本的习惯。

---

## 支持状态

| 平台 | 安装 | 还原 | UI 验证 | 备注 |
|------|------|------|---------|------|
| macOS | ✅ 已通过 | ✅ 已通过 | ✅ 已通过 | 实机验证完成 |
| Windows | ✅ 已通过 | ✅ 已通过 | ✅ 已通过 | 实机验证完成 |

> 翻译范围持续补齐中。若在使用过程中发现未翻译的文本，欢迎报告。

---

## 使用前需求

使用本套件前，请确认已安装以下工具：

| 需求项目 | 说明 |
|----------|------|
| **Antigravity 2.0** | 本套件的翻译对象，需先安装 Antigravity |
| **Node.js LTS** | 前往 [nodejs.org](https://nodejs.org/) 下载安装（安装时会一并安装 npm） |
| **npm** | 随 Node.js 一同安装，用于安装本地依赖 |

### 首次使用前

在项目根目录运行一次：

```bash
npm install
```

此步骤会安装本地 `@electron/asar` 套件，用于 ASAR 解包与重新打包。本套件使用本地安装的 `@electron/asar`，不依赖 `npx` 动态下载，确保离线环境也能正常运行。

---

## 快速开始

```bash
# 1. 确认已安装 Node.js 与 npm
node -v
npm -v

# 2. 安装依赖（仅首次需要）
npm install

# 3. 完全退出 Antigravity，然后运行安装脚本
#    Windows：双击 install-win.bat
#    macOS：双击 install-macos.command

# 4. 重新启动 Antigravity，即可看到简体中文界面
```

---

## Windows 安装

### 前置确认

打开**命令提示字符**或 **PowerShell**，确认 Node.js 与 npm 已可使用：

```cmd
node -v
npm -v
```

若上述命令能正确输出版本号，接着在项目目录运行：

```cmd
npm install
```

### 安装简体中文

1. **完全退出** Antigravity 软件。
2. 在本套件文件夹中，**双击运行 `install-win.bat`**。
3. 运行完成后，重新启动 Antigravity，即可看到简体中文界面。

### 手动指定安装路径

若 Antigravity 的安装位置与默认不同，可使用以下方式手动指定：

```cmd
node localization_engine.js --install-dir "C:\Users\<你的用户名>\AppData\Local\Programs\antigravity"
```

### Windows 常见问题

<details>
<summary><strong>node.exe 访问被拒（Access Denied）</strong></summary>

若运行 `node -v` 时出现「访问被拒」，通常代表系统 PATH 上的 `node.exe` 指向异常位置（例如 Windows App 安装目录）。解决方式：

1. 移除现有 Node.js 安装
2. 从 [nodejs.org](https://nodejs.org/) 重新下载 LTS 版本安装
3. 安装完成后重新打开终端，确认 `node -v` 正常输出版本号
</details>

<details>
<summary><strong>npm 不存在</strong></summary>

npm 随 Node.js 一并安装。若 `npm -v` 无法使用，请重新安装 Node.js LTS 版本。安装时确认勾选 npm 相关选项。
</details>

<details>
<summary><strong>Antigravity 安装路径不同</strong></summary>

引擎默认搜索 `%LOCALAPPDATA%\Programs\antigravity`。若你的 Antigravity 安装在其他位置，请使用 `--install-dir` 参数手动指定。
</details>

---

## macOS 安装

### 前置确认

打开 **Terminal**，确认 Node.js 与 npm 已可使用：

```bash
node -v
npm -v
```

若上述命令能正确输出版本号，接着在项目目录运行：

```bash
npm install
```

### 安装简体中文

1. **完全退出** Antigravity 软件（菜单列 → Antigravity → Quit，或 `Cmd+Q`）。
2. 在 Finder 中找到本套件文件夹，**双击运行 `install-macos.command`**。
   - 若系统提示「无法验证开发者」，请在 Finder 中对文件按右键 → **打开**。
3. 运行完成后，重新启动 Antigravity，即可看到简体中文界面。

### .command 无法运行

若 `.command` 文件双击无反应，请先在 Terminal 中授予运行权限：

```bash
chmod +x install-macos.command restore-macos.command
```

### 手动指定安装路径

若 Antigravity 的安装位置与默认不同，可使用以下方式手动指定：

```bash
node localization_engine.js --install-dir "/Applications/Antigravity.app"
```

### macOS EPERM/EACCES 备份说明

首次安装时，引擎会创建 `app.asar.bak` 备份文件。在某些 macOS 环境下可能遇到权限问题：

1. 引擎会先尝试 `fs.copyFileSync` 创建备份
2. 若遇到 **EPERM** 或 **EACCES** 错误，会自动 fallback 到 `/bin/cp -p` 作为备援
3. 本套件**不会自动运行 `sudo`**

若 fallback 仍失败，可手动创建备份后再运行安装：

```bash
cp "/Applications/Antigravity.app/Contents/Resources/app.asar" \
   "/Applications/Antigravity.app/Contents/Resources/app.asar.bak"
```

---

## 还原官方原版

### Windows

双击运行 `restore-win.bat`，或在命令行运行：

```cmd
node localization_engine.js --restore
```

### macOS

双击运行 `restore-macos.command`，或在 Terminal 运行：

```bash
node localization_engine.js --restore
```

### 通用方式

任何平台均可使用以下命令还原：

```bash
node localization_engine.js --restore
```

> 还原时，引擎会使用首次安装时创建的 `app.asar.bak` 恢复官方原版。还原完成后，备份文件会被移除。

---

## 翻译范围

### 已翻译区域

| 区域 | 说明 |
|------|------|
| 主界面文本 | 侧边栏、顶部导航、一般按钮与标签 |
| 设置页 | 完整设置面板、权限控制、子菜单 |
| Agent / Workspace | Agent 管理页面、工作区页面 |
| MCP / Knowledge | MCP 服务器与知识库管理页面 |
| 系统菜单 | 标题列菜单（文件、编辑、查看、窗口、说明） |
| 任务栏 / 菜单文本 | 任务栏右键菜单、Agent 状态显示 |
| 启动画面文本 | 加载动画文本 |
| 键盘快捷键页 | 快捷键描述与分类 |

> 目前共 **617 个翻译词汇**。

### 不翻译区域

以下区域会自动避开翻译，以确保使用体验不受影响：

- 代码区（Monaco Editor）
- Terminal / 终端
- 输入框（`<input>`、`<textarea>`、`contenteditable`）
- `<code>`、`<pre>` 区块
- SVG / Canvas 图形元素
- Debug Console
- Suggest Widget（自动完成菜单）

---

## 常见问题

<details>
<summary><strong>为什么需要 npm install？</strong></summary>

本套件使用 `@electron/asar` 进行 ASAR 解包与重新打包。`npm install` 会将此工具安装到本地 `node_modules/` 目录，使安装脚本能够正常运行。只需在首次使用时运行一次。
</details>

<details>
<summary><strong>没有 Node.js 可以用吗？</strong></summary>

目前不行。本地化引擎以 Node.js 撰写，需要 Node.js 运行 ASAR 解包、注入与重新打包。请前往 [nodejs.org](https://nodejs.org/) 安装 LTS 版本。
</details>

<details>
<summary><strong>npx is not recognized 怎么办？</strong></summary>

本套件已改用本地 `@electron/asar`，不再依赖 `npx`。请确认已在项目根目录运行 `npm install`，即可正常运行。
</details>

<details>
<summary><strong>node.exe 访问被拒怎么办？</strong></summary>

此问题通常出现在 Windows，代表系统 PATH 上的 `node.exe` 指向异常位置。请移除现有 Node.js，从 [nodejs.org](https://nodejs.org/) 重新下载 LTS 版本安装，然后重新打开终端确认。
</details>

<details>
<summary><strong>Antigravity 更新后翻译不见了怎么办？</strong></summary>

Antigravity 官方更新时，会重新覆盖 `app.asar` 文件，导致先前注入的简体中文本地化内容被移除。这是正常现象，并非套件故障。

解决方式：

1. 完全退出 Antigravity
2. 重新运行安装脚本（Windows：`install-win.bat`；macOS：`install-macos.command`）
3. 重新启动 Antigravity，即可恢复简体中文界面
</details>

<details>
<summary><strong>如何还原官方原版？</strong></summary>

Windows 运行 `restore-win.bat`、macOS 运行 `restore-macos.command`，或使用 `node localization_engine.js --restore`。还原时会使用 `app.asar.bak` 恢复官方原版。
</details>

<details>
<summary><strong>是否会修改官方 app.asar？</strong></summary>

是的，安装过程会解包 `app.asar`、注入翻译代码后重新打包。但首次安装时会自动创建 `app.asar.bak` 备份，可随时还原为官方原版。
</details>

<details>
<summary><strong>是否会分发官方 app.asar？</strong></summary>

不会。本项目不包含、不分发 Antigravity 官方 `app.asar` 或任何官方二进制文件。所有操作均在用户本机端运行。
</details>

<details>
<summary><strong>能否覆盖安装旧版繁体中文套件？</strong></summary>

可以。简体中文套件使用 `ZH-HANS-CN` 标识，并会同时清理旧版 `ZH-HANT-TW` 注入区块，避免重复注入。
</details>

---

## 注意事项

1. **请先退出 Antigravity 再操作**：运行安装或还原脚本前，请确认已完全退出 Antigravity，避免文件被占用。
2. **Antigravity 更新后需重新应用**：官方更新会覆盖 `app.asar`，更新后请重新运行安装脚本。
3. **macOS Gatekeeper**：首次运行 `.command` 文件时，若系统提示「无法验证开发者」，请在 Finder 中对文件按右键 → 打开。
4. **Windows 权限**：若出现「访问被拒」，请对 `.bat` 文件按右键 → **以系统管理员身份运行**。
5. **不要以 sudo 运行**：本套件不会自动使用 `sudo`，也不建议以 root 身份运行脚本。

---

## 授权

本项目采用 [Apache License 2.0](LICENSE) 授权。

---

## 免责声明

- 本项目为非官方社群工具，与 Antigravity 官方无关。
- 本项目**不包含、不分发** Antigravity 官方 `app.asar` 或任何官方二进制文件。
- 用户应自行承担修改本机应用程序资源的风险。
- 所有注入操作均在用户本机端运行，并提供完整还原机制。
- 本项目依据 Apache License 2.0 以「现状」（AS IS）提供，不附带任何明示或暗示的保证。

---

## Star History

<a href="https://www.star-history.com/?repos=980519810%2Fantigravity2.0-zh&type=date&legend=top-left">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=980519810/antigravity2.0-zh&type=date&theme=dark&legend=top-left&sealed_token=8BX3uVdcxrgacqJbvz-9Lxu21TButD7FsX7yjqynCmr75KKe31G5qt6Vbw75FkV3cyiAGL7q6ZAPolbbqPn8KgeVnRW5998Mte_Vosou1K2eIOUoMIGVO9WsyE09yWvlEItj9lSxJYUuBft8Z_Ti45r65Aq0nEQ-ij3sfY-mOJPKRK0l6kI2tXCFuzwp" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=980519810/antigravity2.0-zh&type=date&legend=top-left&sealed_token=8BX3uVdcxrgacqJbvz-9Lxu21TButD7FsX7yjqynCmr75KKe31G5qt6Vbw75FkV3cyiAGL7q6ZAPolbbqPn8KgeVnRW5998Mte_Vosou1K2eIOUoMIGVO9WsyE09yWvlEItj9lSxJYUuBft8Z_Ti45r65Aq0nEQ-ij3sfY-mOJPKRK0l6kI2tXCFuzwp" />
   <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=980519810/antigravity2.0-zh&type=date&legend=top-left&sealed_token=8BX3uVdcxrgacqJbvz-9Lxu21TButD7FsX7yjqynCmr75KKe31G5qt6Vbw75FkV3cyiAGL7q6ZAPolbbqPn8KgeVnRW5998Mte_Vosou1K2eIOUoMIGVO9WsyE09yWvlEItj9lSxJYUuBft8Z_Ti45r65Aq0nEQ-ij3sfY-mOJPKRK0l6kI2tXCFuzwp" />
 </picture>
</a>
