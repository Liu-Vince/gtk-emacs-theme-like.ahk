# gtk-emacs-theme-like.ahk

[English](https://www.google.com/search?q=%23english) | [中文](https://www.google.com/search?q=%23chinese)

**Bring Mac-style keybindings and Emacs navigation to Windows.** **在 Windows 上获得极致的 Mac 风格键位与 Emacs 导航体验。**

This script is written in AutoHotkey (AHK). Forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).

---

<a name="english"></a>

## English

### Description

This project provides AutoHotkey scripts to emulate macOS keybindings (Command+C/V/X...) and Emacs navigation (Ctrl+P/N/B/F...) on Windows. It is designed to unify your muscle memory across operating systems, specifically optimized for **HHKB** users and developers.

### Script Versions

| Script Name | Best For | Description |
| --- | --- | --- |
| **`mac-style-keybindings-swap-win-alt.ahk`** | **HHKB / Mac Keyboard Users** | **Recommended.** <br>

<br>1. **Swaps Win & Alt keys** physically (Win key acts as Command).<br>

<br>2. Provides Mac shortcuts (Cmd+C/V/Z...).<br>

<br>3. Provides Emacs navigation (Ctrl+P/N...). |
| **`mac-style-keybindings.ahk`** | **Standard Windows Keyboards** | Same features as above, but **without** the physical Win/Alt swap by default.<br>

<br>*(You can enable the swap by uncommenting lines in the script).* |
| **`gtk-emacs-theme-like-v2.ahk`** | **Pure Emacs Users** | Only provides Emacs navigation. <br>

<br>*(Does not include Mac system shortcuts like Cmd+C. Win/Alt swap is disabled by default but can be enabled).* |
| `gtk-emacs-theme-like.ahk` | Legacy Users | Old version for AutoHotkey v1. |

### Installation

1. Download and install **[AutoHotkey v2](https://www.autohotkey.com/)**.
2. Download the `.ahk` file that suits your needs (see table above).
3. Double-click the file to run it.
4. (Optional) Press `Win + R`, type `shell:startup`, and create a shortcut to the script in that folder to run it automatically on boot.

### Keybindings

#### 1. Mac-Style System Shortcuts

*Available in `mac-style` scripts. The trigger key depends on which script you use:*

* **Swap Version:** Use the physical **Win** key (Positioned like Mac Command).
* **Standard Version:** Use the physical **Alt** key.

| Key | Function | Mac Equivalent |
| --- | --- | --- |
| `Cmd + C` | Copy | ⌘C |
| `Cmd + V` | Paste | ⌘V |
| `Cmd + X` | Cut | ⌘X |
| `Cmd + Z` | Undo | ⌘Z |
| `Cmd + Shift + Z` | Redo | ⇧⌘Z |
| `Cmd + A` | Select All | ⌘A |
| `Cmd + S` | Save | ⌘S |
| `Cmd + F` | Find | ⌘F |
| `Cmd + W` | Close Tab/Window | ⌘W |
| `Cmd + Q` | Quit Application (Alt+F4) | ⌘Q |
| `Cmd + Arrows` | Jump to Start/End of Line/Doc | ⌘← / ⌘→ ... |

#### 2. Emacs Navigation

*Available in ALL scripts. Uses the **Ctrl** key.*

| Key | Function |
| --- | --- |
| `Ctrl + P` | Up |
| `Ctrl + N` | Down |
| `Ctrl + B` | Left |
| `Ctrl + F` | Right |
| `Ctrl + A` | Beginning of line |
| `Ctrl + E` | End of line |
| `Ctrl + K` | Kill (Delete) to end of line |
| `Ctrl + U` | Kill (Delete) to beginning of line |
| `Ctrl + D` | Delete forward |
| `Ctrl + H` | Backspace |

### Customization

Open the `.ahk` file with a text editor (Notepad, VS Code) to toggle optional features:

* **Win/Alt Swap:** Look for the section `2. Global Win/Alt Physical Swap`. Uncomment the lines to enable swapping on standard keyboards.
* **Natural Scrolling:** Look for section `6. Natural Scrolling`. Uncomment `WheelUp::WheelDown` to reverse mouse wheel direction (Mac style).
* **Administrator Mode:** Uncomment section `0. Script Initialization` to force the script to run as Admin (fixes issues in Task Manager/Games).
* **Excluded Apps:** You can re-enable keybindings in VS Code or Terminal by commenting out lines in section `1. Application Grouping`.

---

<a name="chinese"></a>

## 中文

### 简介

本项目基于 AutoHotkey (AHK) 实现，旨在让 Windows 用户（特别是 **HHKB** 用户和双持党）拥有类似 macOS 的键位体验。它不仅复刻了 Emacs 风格的光标移动，还复刻了 Mac 的 Command 组合键。

### 脚本版本说明

| 脚本文件 | 适用人群 | 功能描述 |
| --- | --- | --- |
| **`mac-style-keybindings-swap-win-alt.ahk`** | **HHKB 用户 / Mac 键盘用户** | **强烈推荐。** <br>

<br>1. **物理互换 Win 和 Alt 键**（空格旁的按键变为 Command）。<br>

<br>2. 支持 Mac 常用快捷键（Cmd+C/V/Z 等）。<br>

<br>3. 支持 Emacs 光标移动（Ctrl+P/N 等）。 |
| **`mac-style-keybindings.ahk`** | **普通 Windows 键盘用户** | 功能同上，但**默认不互换** Win/Alt 键。<br>

<br>你依然使用 Alt 来触发复制粘贴（模拟 Command），使用 Ctrl 进行光标移动。 |
| **`gtk-emacs-theme-like-v2.ahk`** | **纯 Emacs 键位用户** | 仅保留 Emacs 导航功能。<br>

<br>不包含 Mac 系统快捷键映射。Win/Alt 互换代码已保留在注释中，可按需开启。 |
| `gtk-emacs-theme-like.ahk` | AHK v1 用户 | 旧版 AHK v1 代码。 |

### 安装指南

1. 下载并安装 **[AutoHotkey v2](https://www.autohotkey.com/)**。
2. 根据你的需求下载上方表格中对应的 `.ahk` 文件。
3. 双击运行即可。
4. （可选）按 `Win + R`，输入 `shell:startup`，将脚本的快捷方式放入该文件夹，即可开机自启。

### 键位列表

#### 1. Mac 风格系统快捷键

*仅适用于 `mac-style` 系列脚本。触发按键取决于你使用的脚本版本：*

* **Swap 版本：** 使用物理 **Win** 键（即空格键旁边的键，模拟 Command）。
* **标准版本：** 使用物理 **Alt** 键。

| 快捷键 | 功能 | 对应 Mac |
| --- | --- | --- |
| `Cmd + C` | 复制 | ⌘C |
| `Cmd + V` | 粘贴 | ⌘V |
| `Cmd + X` | 剪切 | ⌘X |
| `Cmd + Z` | 撤销 | ⌘Z |
| `Cmd + Shift + Z` | 重做 | ⇧⌘Z |
| `Cmd + A` | 全选 | ⌘A |
| `Cmd + S` | 保存 | ⌘S |
| `Cmd + F` | 查找 | ⌘F |
| `Cmd + W` | 关闭标签/窗口 | ⌘W |
| `Cmd + Q` | 退出程序 (Alt+F4) | ⌘Q |
| `Cmd + 方向键` | 跳转到文首/文末/行首/行尾 | ⌘← / ⌘→ ... |

#### 2. Emacs 风格导航

*所有脚本均支持。使用 **Ctrl** 键触发。*

| 快捷键 | 功能 |
| --- | --- |
| `Ctrl + P` | 上移 (Up) |
| `Ctrl + N` | 下移 (Down) |
| `Ctrl + B` | 左移 (Left) |
| `Ctrl + F` | 右移 (Right) |
| `Ctrl + A` | 移动到行首 (Home) |
| `Ctrl + E` | 移动到行尾 (End) |
| `Ctrl + K` | 删除到行尾 |
| `Ctrl + U` | 删除到行首 |
| `Ctrl + D` | 删除后一个字符 (Del) |
| `Ctrl + H` | 删除前一个字符 (Backspace) |

### 自定义配置 (取消注释即可启用)

使用文本编辑器打开 `.ahk` 文件，可以开启以下隐藏功能：

1. **管理员提权**：在脚本头部 `0. 脚本初始化` 部分，取消注释相关代码。这能解决在任务管理器或游戏中脚本失效的问题。
2. **Win/Alt 互换**：在 `mac-style-keybindings.ahk` 中，取消注释 `2. 全局 Win/Alt 物理互换` 部分的代码即可开启互换。
3. **鼠标自然滚动**：在脚本底部，取消注释 `WheelUp::WheelDown` 相关代码，即可获得 Mac 风格的滚轮方向。
4. **排除列表**：默认情况下，脚本允许在 VS Code 和 Windows Terminal 中使用 Emacs 键位。如果你希望在这些软件中使用原生键位，请在 `1. 应用程序分组` 中取消注释 `GroupAdd` 相关的行。

### 排除的应用程序

脚本在远程桌面 (mstsc)、虚拟机 (VMware) 以及部分游戏 (原神、守望先锋) 中会自动禁用，以防止按键冲突。

### License

This project is forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).
