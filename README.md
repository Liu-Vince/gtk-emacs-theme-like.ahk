# Mac-style & Emacs Keybindings for Windows

[English](#english) | [中文](#chinese)

**Bring Mac-style keybindings and Emacs navigation to Windows.** **在 Windows 上获得 Mac 风格键位与 Emacs 导航体验。**

AutoHotkey scripts that unify your muscle memory across macOS and Windows. Forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).

---

<a name="english"></a>

## English

### Description

This project provides AutoHotkey scripts to emulate macOS keybindings (Command+C/V/X...) and Emacs navigation (Ctrl+P/N/B/F...) on Windows. It is designed to unify your muscle memory across operating systems, specifically optimized for **HHKB** users and developers.

### Script Versions

| Script Name | Best For | Description |
| --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **Mac/HHKB Users** | **Recommended.** Mac shortcuts (Alt+C/V/Z...) + Emacs navigation (Ctrl+P/N...).<br><br>• Uses **Alt** key as Mac Command (Alt+C to copy)<br>• Supports Win/Alt swap via uncommenting lines (for HHKB)<br>• Full Emacs-style cursor movement |
| **`gtk-emacs-theme-like-v2.ahk`** | **Pure Emacs Users** | Only Emacs navigation, no Mac shortcuts.<br><br>• Pure Emacs keybindings (Ctrl+P/N/B/F...)<br>• No Mac-style system shortcuts<br>• Win/Alt swap available via uncommenting |
| `gtk-emacs-theme-like.ahk` | Legacy Users | Old version for AutoHotkey v1 (not recommended) |

### Installation

1. Download and install **[AutoHotkey v2](https://www.autohotkey.com/)**
2. Download the `.ahk` file that suits your needs (see table above)
3. Double-click the file to run it
4. (Optional) Press `Win + R`, type `shell:startup`, and create a shortcut to the script in that folder to run it automatically on boot

### Keybindings

#### 1. Mac-Style System Shortcuts

*Available in `mac-style-keybindings.ahk` only. Uses **Alt** key by default (or **Win** key if swap enabled).*

| Shortcut | Function | Mac Equivalent |
| --- | --- | --- |
| `Alt + C` | Copy | ⌘C |
| `Alt + V` | Paste | ⌘V |
| `Alt + X` | Cut | ⌘X |
| `Alt + Z` | Undo | ⌘Z |
| `Alt + Shift + Z` | Redo | ⇧⌘Z |
| `Alt + A` | Select All | ⌘A |
| `Alt + S` | Save | ⌘S |
| `Alt + F` | Find | ⌘F |
| `Alt + B` | Bold (in editors) | ⌘B |
| `Alt + W` | Close Tab | ⌘W |
| `Alt + T` | New Tab | ⌘T |
| `Alt + N` | New Window | ⌘N |
| `Alt + R` | Refresh | ⌘R |
| `Alt + Q` | Quit Application | ⌘Q |
| `Alt + ←/→` | Home/End (Line Start/End) | ⌘← / ⌘→ |
| `Alt + ↑/↓` | Document Start/End | ⌘↑ / ⌘↓ |
| `Win + ←/→` | Word Jump (if swap enabled) | ⌥← / ⌥→ |

#### 2. Emacs Navigation

*Available in ALL scripts. Uses **Ctrl** key.*

| Shortcut | Function | Emacs Equivalent |
| --- | --- | --- |
| `Ctrl + P` | Move up | C-p |
| `Ctrl + N` | Move down | C-n |
| `Ctrl + B` | Move left | C-b |
| `Ctrl + F` | Move right | C-f |
| `Ctrl + A` | Beginning of line | C-a |
| `Ctrl + E` | End of line | C-e |
| `Ctrl + D` | Delete forward | C-d |
| `Ctrl + H` | Backspace | C-h |
| `Ctrl + K` | Delete to end of line | C-k |
| `Ctrl + U` | Delete to beginning of line | C-u |
| `Ctrl + W` | Cut | C-w |
| `Ctrl + Y` | Paste | C-y |
| `Ctrl + M` | Enter | C-m |
| `Ctrl + \` | Select all | C-\ |

### Customization

Open the `.ahk` file with a text editor to toggle optional features:

**In `mac-style-keybindings.ahk`:**
- **Win/Alt Swap (for HHKB):** Uncomment lines 49-53 in section `2. Global Win/Alt Physical Swap` to swap Win and Alt keys physically
- **Admin Mode:** Uncomment lines 10-17 in section `0. Script Initialization` to run as Administrator (fixes issues in Task Manager/Registry/Games)
- **Natural Scrolling:** Uncomment lines 146-147 in section `6. Natural Scrolling` to reverse mouse wheel direction (Mac style)
- **Excluded Apps:** Comment out lines in section `1. Application Grouping` to enable keybindings in specific apps (e.g., VS Code, Windows Terminal)

**In `gtk-emacs-theme-like-v2.ahk`:**
- **Win/Alt Swap:** Uncomment lines 10-18 to swap Win and Alt keys

### Excluded Applications

By default, the scripts disable keybindings in these applications to prevent conflicts:
- VMware Unity Mode
- Remote Desktop (mstsc.exe)
- GVim
- Meadow, Cygwin terminals

Apps like **VS Code** and **Windows Terminal** are **not excluded** by default, allowing you to use Emacs keybindings in them. You can exclude them by uncommenting the relevant lines in the script.

### Notes

- **Performance:** The script runs at High priority to ensure responsive key handling
- **HHKB Users:** Enable Win/Alt swap for the most natural Mac-like experience
- **Selection:** All cursor movement shortcuts support Shift modifier for text selection

---

<a name="chinese"></a>

## 中文

### 简介

本项目基于 AutoHotkey v2 实现，旨在让 Windows 用户（特别是 **HHKB** 用户和双持党）拥有类似 macOS 的键位体验。它不仅复刻了 Emacs 风格的光标移动，还提供了 Mac 的 Command 组合键映射。

### 脚本版本说明

| 脚本文件 | 适用人群 | 功能描述 |
| --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **Mac/HHKB 用户** | **强烈推荐。** Mac 快捷键 (Alt+C/V/Z...) + Emacs 导航 (Ctrl+P/N...)<br><br>• 使用 **Alt** 键作为 Mac Command（Alt+C 复制）<br>• 支持通过取消注释启用 Win/Alt 互换（适配 HHKB）<br>• 完整的 Emacs 风格光标移动 |
| **`gtk-emacs-theme-like-v2.ahk`** | **纯 Emacs 键位用户** | 仅 Emacs 导航，无 Mac 快捷键<br><br>• 纯 Emacs 键位绑定 (Ctrl+P/N/B/F...)<br>• 不包含 Mac 风格系统快捷键<br>• 可通过取消注释启用 Win/Alt 互换 |
| `gtk-emacs-theme-like.ahk` | AHK v1 用户 | AutoHotkey v1 旧版代码（不推荐） |

### 安装指南

1. 下载并安装 **[AutoHotkey v2](https://www.autohotkey.com/)**
2. 根据你的需求下载上方表格中对应的 `.ahk` 文件
3. 双击运行即可
4. （可选）按 `Win + R`，输入 `shell:startup`，将脚本的快捷方式放入该文件夹，即可开机自启

### 键位列表

#### 1. Mac 风格系统快捷键

*仅适用于 `mac-style-keybindings.ahk`。默认使用 **Alt** 键（启用互换后使用 **Win** 键）。*

| 快捷键 | 功能 | 对应 Mac |
| --- | --- | --- |
| `Alt + C` | 复制 | ⌘C |
| `Alt + V` | 粘贴 | ⌘V |
| `Alt + X` | 剪切 | ⌘X |
| `Alt + Z` | 撤销 | ⌘Z |
| `Alt + Shift + Z` | 重做 | ⇧⌘Z |
| `Alt + A` | 全选 | ⌘A |
| `Alt + S` | 保存 | ⌘S |
| `Alt + F` | 查找 | ⌘F |
| `Alt + B` | 加粗（编辑器中） | ⌘B |
| `Alt + W` | 关闭标签 | ⌘W |
| `Alt + T` | 新建标签 | ⌘T |
| `Alt + N` | 新建窗口 | ⌘N |
| `Alt + R` | 刷新 | ⌘R |
| `Alt + Q` | 退出程序 | ⌘Q |
| `Alt + ←/→` | 跳转到行首/行尾 | ⌘← / ⌘→ |
| `Alt + ↑/↓` | 跳转到文首/文末 | ⌘↑ / ⌘↓ |
| `Win + ←/→` | 按单词跳转（启用互换后） | ⌥← / ⌥→ |

#### 2. Emacs 风格导航

*所有脚本均支持。使用 **Ctrl** 键触发。*

| 快捷键 | 功能 | Emacs 等价 |
| --- | --- | --- |
| `Ctrl + P` | 上移 | C-p |
| `Ctrl + N` | 下移 | C-n |
| `Ctrl + B` | 左移 | C-b |
| `Ctrl + F` | 右移 | C-f |
| `Ctrl + A` | 移动到行首 | C-a |
| `Ctrl + E` | 移动到行尾 | C-e |
| `Ctrl + D` | 删除后一个字符 | C-d |
| `Ctrl + H` | 删除前一个字符（退格） | C-h |
| `Ctrl + K` | 删除到行尾 | C-k |
| `Ctrl + U` | 删除到行首 | C-u |
| `Ctrl + W` | 剪切 | C-w |
| `Ctrl + Y` | 粘贴 | C-y |
| `Ctrl + M` | 回车 | C-m |
| `Ctrl + \` | 全选 | C-\ |

### 自定义配置

使用文本编辑器打开 `.ahk` 文件，可以开启以下功能：

**在 `mac-style-keybindings.ahk` 中：**
- **Win/Alt 互换（适配 HHKB）：** 在第 49-53 行的 `2. 全局 Win/Alt 物理互换` 部分取消注释即可物理互换 Win 和 Alt 键
- **管理员提权：** 在第 10-17 行的 `0. 脚本初始化` 部分取消注释，可以管理员身份运行（解决在任务管理器/注册表/游戏中失效的问题）
- **鼠标自然滚动：** 在第 146-147 行的 `6. 鼠标自然滚动` 部分取消注释即可获得 Mac 风格的滚轮方向
- **排除列表：** 在 `1. 应用程序分组` 中注释掉相关行可以在特定应用中启用键位绑定（如 VS Code、Windows Terminal）

**在 `gtk-emacs-theme-like-v2.ahk` 中：**
- **Win/Alt 互换：** 取消注释第 10-18 行即可交换 Win 和 Alt 键

### 排除的应用程序

默认情况下，脚本在以下应用中会自动禁用，以防止按键冲突：
- VMware 统一模式
- 远程桌面 (mstsc.exe)
- GVim
- Meadow、Cygwin 终端

**VS Code** 和 **Windows Terminal** **默认不排除**，允许在这些应用中使用 Emacs 键位。如需排除，请在脚本中取消注释相关行。

### 注意事项

- **性能优化：** 脚本以高优先级运行，确保按键响应迅速
- **HHKB 用户：** 启用 Win/Alt 互换可获得最自然的 Mac 体验
- **选择文本：** 所有光标移动快捷键均支持 Shift 修饰键进行文本选择

### License

Forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).
