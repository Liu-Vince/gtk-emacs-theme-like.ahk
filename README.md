# Mac-style & Emacs Keybindings for Windows

[English](#english) | [中文](#chinese)

**Bring Mac-style keybindings and Emacs navigation to Windows.** **在 Windows 上获得 Mac 风格键位与 Emacs 导航体验。**

AutoHotkey scripts that unify your muscle memory across macOS and Windows. Forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).

---

<a name="english"></a>

## English

### Description

This project provides an optimized AutoHotkey v2 script to emulate macOS keybindings (Command+C/V/X...) and Emacs navigation (Ctrl+P/N/B/F...) on Windows. It is designed to unify your muscle memory across operating systems, specifically optimized for **HHKB** users, Mac/Windows switchers, and developers who love Emacs keybindings.

**Key Features:**
- ✅ Full Mac-style system shortcuts (Command+C/V/Q...)
- ✅ Complete Emacs navigation (Ctrl+P/N/B/F/A/E/K/U...)
- ✅ Optional Win/Alt key swap for HHKB keyboards
- ✅ IntelliJ IDEA mouse navigation (Command+Click)
- ✅ Option key support (word jump, word delete)
- ✅ Performance optimized (zero delay key processing)
- ✅ Smart input method switching
- ✅ Intelligent app exclusion list

### Script Versions

| Script Name | Version | Best For | Description |
| --- | --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **v3.0** | **Mac/HHKB Users** | **⭐ Recommended.** Mac shortcuts (Alt+C/V/Z...) + Emacs navigation (Ctrl+P/N...).<br><br>• Uses **Alt** key as Mac Command (Alt+C to copy)<br>• Optional Win/Alt swap for HHKB DIP SW 2<br>• Full Emacs-style cursor movement<br>• Option key support (word jump/delete)<br>• IntelliJ IDEA integration |
| **`gtk-emacs-theme-like-v2.ahk`** | v2.0 | **Pure Emacs Users** | Only Emacs navigation, no Mac shortcuts.<br><br>• Pure Emacs keybindings (Ctrl+P/N/B/F...)<br>• No Mac-style system shortcuts<br>• Win/Alt swap available via uncommenting |
| `gtk-emacs-theme-like.ahk` | v1.0 | Legacy Users | Old version for AutoHotkey v1 (not recommended) |

### Installation

1. Download and install **[AutoHotkey v2](https://www.autohotkey.com/)**
2. Download **`mac-style-keybindings.ahk`** (recommended) or choose another script from the table above
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

#### 2. Emacs Navigation

*Available in ALL scripts. Uses **Ctrl** key.*

| Shortcut | Function | Emacs Equivalent |
| --- | --- | --- |
| `Ctrl + P` | Move up | C-p (previous-line) |
| `Ctrl + N` | Move down | C-n (next-line) |
| `Ctrl + B` | Move left | C-b (backward-char) |
| `Ctrl + F` | Move right | C-f (forward-char) |
| `Ctrl + A` | Beginning of line | C-a |
| `Ctrl + E` | End of line | C-e |
| `Ctrl + D` | Delete forward | C-d (delete-char) |
| `Ctrl + H` | Backspace | C-h |
| `Ctrl + K` | Cut to end of line | C-k (kill-line) |
| `Ctrl + U` | Delete to beginning of line | C-u |
| `Ctrl + W` | Cut | C-w (kill-region) |
| `Ctrl + Y` | Paste | C-y (yank) |
| `Ctrl + M` | Enter | C-m |
| `Ctrl + \` | Select all | C-\ |
| `Ctrl + Space` | Switch input method | - |

**Note:** All cursor movement shortcuts support `Shift` modifier for text selection (e.g., `Shift+Ctrl+P` selects text upward).

#### 3. Option Key Functions (Word Operations)

*Uses **Win** key by default (or **Alt** key if swap enabled).*

| Shortcut | Function | Mac Equivalent |
| --- | --- | --- |
| `Win + ←/→` | Word jump left/right | ⌥← / ⌥→ |
| `Shift + Win + ←/→` | Select word left/right | ⇧⌥← / ⇧⌥→ |
| `Win + Backspace` | Delete previous word | ⌥⌫ |
| `Win + Delete` | Delete next word | ⌥⌦ |

#### 4. IntelliJ IDEA Integration

*Only in IntelliJ IDEA (`idea64.exe`).*

| Shortcut | Function | Mac Equivalent |
| --- | --- | --- |
| `Alt + Click` | Go to definition | ⌘ + Click |

**Note:** If you enable Win/Alt swap (Lines 67-72), use `Win + Click` instead.

### Customization

Open `mac-style-keybindings.ahk` with a text editor to toggle optional features:

#### Performance Optimization (Lines 10-14)
Already enabled by default:
- `SetWinDelay 0` - Zero delay for window operations
- `SetKeyDelay 0, 0` - Zero delay for key sending
- `SetControlDelay -1` - No delay for control operations
- `SetMouseDelay -1` - No delay for mouse operations

#### Win/Alt Physical Swap (Lines 67-76) - For HHKB Users
Uncomment to swap Win and Alt keys physically:
```ahk
LWin::LAlt
RWin::RAlt
LAlt::LWin
RAlt::RWin
~LAlt Up::Send "{Blind}{vkE8}"
~RAlt Up::Send "{Blind}{vkE8}"
```
**Why use this?** If your HHKB has DIP SW 2=ON (hardware Win/Alt swap), enable this to make the script logic match your keyboard layout.

#### Admin Mode (Lines 18-25)
Uncomment to run as Administrator (fixes issues in Task Manager/Registry/Games):
```ahk
if not A_IsAdmin
{
    try
    {
        Run "*RunAs `"" A_ScriptFullPath "`""
    }
    ExitApp
}
```

#### Input Method Switching (Lines 147-153)
Choose one option based on your input method (Option 1 is enabled by default):
- **Option 1 (Enabled by default):** Windows 10/11 modern input method - maps `Ctrl+Space` to `Win+Space`
- **Option 2:** Legacy input method - keeps `Ctrl+Space` as `Ctrl+Space`
- **Option 3:** Disable input method switching completely

#### Natural Scrolling (Lines 216-217)
Uncomment to reverse mouse wheel direction (Mac style):
```ahk
WheelUp::WheelDown
WheelDown::WheelUp
```

#### Excluded Apps (Lines 40-58)
By default, excluded apps:
- VMware Unity Mode
- Remote Desktop (`mstsc.exe`)
- GVim, Emacs, Meadow, Cygwin terminals

**Not excluded by default** (you can use Emacs keybindings in them):
- VS Code
- Windows Terminal
- IntelliJ IDEA
- Eclipse

To exclude an app, uncomment the relevant line in section `1. Application Grouping`.

### What's New in v3.0

Compared to v2.0:
- ✅ **Performance boost**: Added `SetKeyDelay 0` and `SetMouseDelay -1` for zero-delay key processing
- ✅ **Option key support**: Added `Win+Backspace/Delete` for word deletion (Mac Option+Delete behavior)
- ✅ **Input method fix**: Added `Ctrl+Space` → `Win+Space` mapping for modern Windows input method
- ✅ **IDEA integration**: Added `Alt+Click` mouse navigation for IntelliJ IDEA (default config)
- ✅ **Start menu prevention**: Added `A_MenuMaskKey := "vkFF"` to prevent accidental Start menu popup
- ✅ **Better comments**: Enhanced documentation with Emacs term explanations
- ✅ **Script notification**: Shows tray tip when script loads
- ✅ **Kill-line fix**: `Ctrl+K` now uses cut (`^x`) instead of delete to match Emacs kill-ring semantics

### Troubleshooting

**Q: Keys feel stuck or misbehaving (e.g., pressing F triggers Feedback Hub)?**
A: This is caused by Win key getting stuck. Solutions:
1. Reload the script (right-click tray icon → Reload)
2. Press and release Win key manually
3. For permanent fix: Use registry-based key remapping instead of AHK for Win/Alt swap (see [HHKB script discussion](https://github.com))

**Q: Script doesn't work in some apps?**
A: Check if the app is in the exclusion list (section 1). Also try running the script as Administrator.

**Q: Ctrl+Y doesn't redo in Windows apps?**
A: Correct. This script maps `Ctrl+Y` to paste (Emacs yank), which overrides Windows redo. Use `Alt+Shift+Z` for redo instead.

### Notes

- **Performance:** The script runs at High priority to ensure responsive key handling
- **HHKB Users:** Enable Win/Alt swap for the most natural Mac-like experience
- **Selection:** All cursor movement shortcuts support Shift modifier for text selection
- **Conflicts:** Some Emacs keybindings intentionally override Windows defaults (e.g., `Ctrl+F` → cursor right instead of find). Use `Alt+F` for find.

---

<a name="chinese"></a>

## 中文

### 简介

本项目基于 AutoHotkey v2 实现，旨在让 Windows 用户（特别是 **HHKB** 用户和双持党）拥有类似 macOS 的键位体验。它不仅复刻了 Emacs 风格的光标移动，还提供了 Mac 的 Command 组合键映射。

**核心特性：**
- ✅ 完整的 Mac 风格系统快捷键（Command+C/V/Q...）
- ✅ 完整的 Emacs 导航（Ctrl+P/N/B/F/A/E/K/U...）
- ✅ 可选的 Win/Alt 键位互换（适配 HHKB 键盘）
- ✅ IntelliJ IDEA 鼠标导航（Command+单击）
- ✅ Option 键支持（按单词跳转、删除）
- ✅ 性能优化（零延迟按键处理）
- ✅ 智能输入法切换
- ✅ 智能应用排除列表

### 脚本版本说明

| 脚本文件 | 版本 | 适用人群 | 功能描述 |
| --- | --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **v3.0** | **Mac/HHKB 用户** | **⭐ 强烈推荐。** Mac 快捷键 (Alt+C/V/Z...) + Emacs 导航 (Ctrl+P/N...)<br><br>• 使用 **Alt** 键作为 Mac Command（Alt+C 复制）<br>• 可选的 Win/Alt 互换（适配 HHKB DIP SW 2）<br>• 完整的 Emacs 风格光标移动<br>• Option 键支持（按单词跳转/删除）<br>• IntelliJ IDEA 集成 |
| **`gtk-emacs-theme-like-v2.ahk`** | v2.0 | **纯 Emacs 键位用户** | 仅 Emacs 导航，无 Mac 快捷键<br><br>• 纯 Emacs 键位绑定 (Ctrl+P/N/B/F...)<br>• 不包含 Mac 风格系统快捷键<br>• 可通过取消注释启用 Win/Alt 互换 |
| `gtk-emacs-theme-like.ahk` | v1.0 | AHK v1 用户 | AutoHotkey v1 旧版代码（不推荐） |

### 安装指南

1. 下载并安装 **[AutoHotkey v2](https://www.autohotkey.com/)**
2. 下载 **`mac-style-keybindings.ahk`**（推荐）或根据需求选择其他脚本
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

#### 2. Emacs 风格导航

*所有脚本均支持。使用 **Ctrl** 键触发。*

| 快捷键 | 功能 | Emacs 等价 |
| --- | --- | --- |
| `Ctrl + P` | 上移 | C-p (previous-line) |
| `Ctrl + N` | 下移 | C-n (next-line) |
| `Ctrl + B` | 左移 | C-b (backward-char) |
| `Ctrl + F` | 右移 | C-f (forward-char) |
| `Ctrl + A` | 移动到行首 | C-a |
| `Ctrl + E` | 移动到行尾 | C-e |
| `Ctrl + D` | 删除后一个字符 | C-d (delete-char) |
| `Ctrl + H` | 删除前一个字符（退格） | C-h |
| `Ctrl + K` | 剪切到行尾 | C-k (kill-line) |
| `Ctrl + U` | 删除到行首 | C-u |
| `Ctrl + W` | 剪切 | C-w (kill-region) |
| `Ctrl + Y` | 粘贴 | C-y (yank) |
| `Ctrl + M` | 回车 | C-m |
| `Ctrl + \` | 全选 | C-\ |
| `Ctrl + Space` | 切换输入法 | - |

**注意：** 所有光标移动快捷键均支持 `Shift` 修饰键进行文本选择（如 `Shift+Ctrl+P` 向上选中文本）。

#### 3. Option 键功能（单词操作）

*默认使用 **Win** 键（启用互换后使用 **Alt** 键）。*

| 快捷键 | 功能 | 对应 Mac |
| --- | --- | --- |
| `Win + ←/→` | 按单词左移/右移 | ⌥← / ⌥→ |
| `Shift + Win + ←/→` | 选中单词左移/右移 | ⇧⌥← / ⇧⌥→ |
| `Win + Backspace` | 删除前一个单词 | ⌥⌫ |
| `Win + Delete` | 删除后一个单词 | ⌥⌦ |

#### 4. IntelliJ IDEA 集成

*仅在 IntelliJ IDEA (`idea64.exe`) 中生效。*

| 快捷键 | 功能 | 对应 Mac |
| --- | --- | --- |
| `Alt + 单击` | 跳转到定义 | ⌘ + 单击 |

**注意：** 如果启用了 Win/Alt 互换（第 67-72 行），请使用 `Win + 单击`。

### 自定义配置

使用文本编辑器打开 `mac-style-keybindings.ahk`，可以开启以下功能：

#### 性能优化（第 10-14 行）
默认已启用：
- `SetWinDelay 0` - 窗口操作零延迟
- `SetKeyDelay 0, 0` - 按键发送零延迟
- `SetControlDelay -1` - 控件操作无延迟
- `SetMouseDelay -1` - 鼠标操作无延迟

#### Win/Alt 物理互换（第 67-76 行）- 适配 HHKB
取消注释以物理互换 Win 和 Alt 键：
```ahk
LWin::LAlt
RWin::RAlt
LAlt::LWin
RAlt::RWin
~LAlt Up::Send "{Blind}{vkE8}"
~RAlt Up::Send "{Blind}{vkE8}"
```
**为什么使用？** 如果你的 HHKB 键盘开启了 DIP SW 2（硬件层面互换 Win/Alt），启用此项可以让脚本逻辑匹配你的键盘布局。

#### 管理员提权（第 18-25 行）
取消注释以管理员身份运行（解决在任务管理器/注册表/游戏中失效的问题）：
```ahk
if not A_IsAdmin
{
    try
    {
        Run "*RunAs `"" A_ScriptFullPath "`""
    }
    ExitApp
}
```

#### 输入法切换（第 147-153 行）
根据你的输入法选择一个选项（默认已启用选项 1）：
- **选项 1（默认已启用）：** Windows 10/11 现代输入法 - 将 `Ctrl+Space` 映射为 `Win+Space`
- **选项 2：** 旧版输入法 - 保持 `Ctrl+Space` 为 `Ctrl+Space`
- **选项 3：** 完全禁用输入法切换

#### 鼠标自然滚动（第 216-217 行）
取消注释以反转鼠标滚轮方向（Mac 风格）：
```ahk
WheelUp::WheelDown
WheelDown::WheelUp
```

#### 排除的应用程序（第 40-58 行）
默认排除的应用：
- VMware 统一模式
- 远程桌面 (`mstsc.exe`)
- GVim、Emacs、Meadow、Cygwin 终端

**默认不排除**（可以在这些应用中使用 Emacs 键位）：
- VS Code
- Windows Terminal
- IntelliJ IDEA
- Eclipse

如需排除某个应用，在 `1. 应用程序分组` 部分取消注释相关行。

### v3.0 新增功能

相比 v2.0：
- ✅ **性能提升**：添加 `SetKeyDelay 0` 和 `SetMouseDelay -1` 实现零延迟按键处理
- ✅ **Option 键支持**：添加 `Win+Backspace/Delete` 按单词删除（Mac Option+Delete 行为）
- ✅ **输入法修复**：添加 `Ctrl+Space` → `Win+Space` 映射以适配现代 Windows 输入法
- ✅ **IDEA 集成**：添加 `Alt+单击` 鼠标导航支持 IntelliJ IDEA（默认配置）
- ✅ **开始菜单防护**：添加 `A_MenuMaskKey := "vkFF"` 防止意外弹出开始菜单
- ✅ **注释增强**：增强文档注释，添加 Emacs 术语解释
- ✅ **脚本通知**：脚本加载时显示托盘提示
- ✅ **Kill-line 修复**：`Ctrl+K` 现在使用剪切（`^x`）而非删除，符合 Emacs kill-ring 语义

### 常见问题

**Q: 按键错乱或卡住（如按 F 键触发反馈中心）？**
A: 这是 Win 键卡住导致的。解决方案：
1. 重新加载脚本（右键托盘图标 → 重新加载）
2. 手动按下并释放 Win 键
3. 永久解决：使用注册表方式进行 Win/Alt 互换，而非 AHK（参见 [HHKB 脚本讨论](https://github.com)）

**Q: 脚本在某些应用中不生效？**
A: 检查该应用是否在排除列表中（第 1 节）。也可以尝试以管理员身份运行脚本。

**Q: Ctrl+Y 在 Windows 应用中无法重做？**
A: 正确。本脚本将 `Ctrl+Y` 映射为粘贴（Emacs yank），覆盖了 Windows 的重做功能。请使用 `Alt+Shift+Z` 进行重做。

### 注意事项

- **性能优化：** 脚本以高优先级运行，确保按键响应迅速
- **HHKB 用户：** 启用 Win/Alt 互换可获得最自然的 Mac 体验
- **选择文本：** 所有光标移动快捷键均支持 Shift 修饰键进行文本选择
- **键位冲突：** 部分 Emacs 键位会有意覆盖 Windows 默认功能（如 `Ctrl+F` → 光标右移而非查找）。请使用 `Alt+F` 进行查找。

### License

Forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).
