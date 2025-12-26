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
- ✅ Option key support (word jump, word delete)
- ✅ Performance optimized (zero delay key processing)
- ✅ Smart input method switching
- ✅ Intelligent app exclusion list

### Script Versions

| Script Name | Version | Best For | Description |
| --- | --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **v3.0** | **Mac/HHKB Users** | **⭐ Recommended.** Mac shortcuts (Alt+C/V/Z...) + Emacs navigation (Ctrl+P/N...).<br><br>• Uses **Alt** key as Mac Command (Alt+C to copy)<br>• Optional Win/Alt swap for HHKB DIP SW 2<br>• Full Emacs-style cursor movement<br>• Option key support (word jump/delete) |
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

### Customization

Open `mac-style-keybindings.ahk` with a text editor to toggle optional features:

#### Performance Optimization (Lines 10-14)
Already enabled by default:
- `SetWinDelay 0` - Zero delay for window operations
- `SetKeyDelay 0, 0` - Zero delay for key sending
- `SetControlDelay -1` - No delay for control operations
- `SetMouseDelay -1` - No delay for mouse operations

#### Win/Alt Physical Swap (Lines 67-91) - For HHKB Users

**⚠️ Recommendation: Use Registry-Based Key Swap (Preferred)**

The script supports two methods for swapping Win and Alt keys:

**Method 1: Registry-Based Swap (Recommended)**
- **Pros:** Zero latency, no state sync issues, completely eliminates Win key stuck problem
- **Cons:** Requires admin rights, system restart needed
- **How to (Option A - Use provided .reg files):**
  1. Double-click **`swap-win-alt.reg`** to apply Win/Alt swap
  2. Restart your computer
  3. Keep the AHK script as-is (don't uncomment lines 82-91)
  4. (To undo: double-click **`restore-keyboard.reg`** and restart)
- **How to (Option B - Use SharpKeys GUI):**
  1. Download **[SharpKeys](https://github.com/randyrants/sharpkeys)** (free, open-source)
  2. Configure mappings:
     - Left Windows → Left Alt
     - Left Alt → Left Windows
     - Right Windows → Right Alt
     - Right Alt → Right Windows
  3. Click "Write to Registry" and restart
  4. Keep the AHK script as-is (don't uncomment lines 82-91)

**Method 2: AHK-Based Swap (Fallback)**
- **Pros:** No admin rights needed, no restart, easy to toggle
- **Cons:** May cause Win key to get stuck occasionally (mitigated by release handlers in lines 35-36)
- **How to:** Uncomment lines 82-91 in the script

```ahk
LWin::LAlt
RWin::RAlt
LAlt::LWin
RAlt::RWin
~LAlt Up::Send "{Blind}{vkE8}"
~RAlt Up::Send "{Blind}{vkE8}"
```

**Which method to choose?**
- **HHKB users with DIP SW 2=ON:** Use Method 1 (Registry) for best results
- **Can't modify registry:** Use Method 2 (AHK)
- **Testing/temporary use:** Use Method 2 (AHK)

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
Choose one option based on your input method (Option 2 is the default):
- **Option 1:** Windows 10/11 modern input method - maps `Ctrl+Space` to `Win+Space` (uncomment line 148 to enable)
- **Option 2 (Default):** Legacy input method - keeps `Ctrl+Space` unchanged (no modification needed)
- **Option 3:** Disable input method switching completely (uncomment line 153)

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
- ✅ **Start menu prevention**: Added `A_MenuMaskKey := "vkFF"` to prevent accidental Start menu popup
- ✅ **Better comments**: Enhanced documentation with Emacs term explanations
- ✅ **Script notification**: Shows tray tip when script loads
- ✅ **Kill-line fix**: `Ctrl+K` now uses cut (`^x`) instead of delete to match Emacs kill-ring semantics

### Troubleshooting

**Q: Keys feel stuck or misbehaving (e.g., pressing Backspace deletes a whole word, or pressing F triggers Feedback Hub)?**

A: This is caused by the Win key getting stuck in pressed state. **Why it happens:**
- AutoHotkey intercepts Win key for mappings like `Win+Left` → `Ctrl+Left`
- Sometimes the key release event gets lost (high CPU load, rapid key presses)
- Windows thinks Win is still pressed, so all subsequent keys become `Win+Key`

**Solutions:**
1. **Immediate fix:** Press and release the Win key manually
2. **Reload script:** Right-click tray icon → Reload This Script
3. **Permanent fix (v3.0+):** The script now includes Win key release handlers (lines 35-36) to prevent this issue
4. **Root cause fix (Recommended):** If you need Win/Alt swap, use **registry-based swap** instead of AHK (see "Win/Alt Physical Swap" section). This completely eliminates the stuck key problem at the driver level.
5. **Disable Option key features:** If you don't need word-level operations, comment out lines 202-209 (`#Left`, `#Right`, `#BS`, `#Del`)

**Prevention tips:**
- Don't press Win+key combinations too rapidly
- **Best solution:** Use registry-based Win/Alt swap (Method 1 in customization section)
- The script's High priority setting helps reduce this issue

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
- ✅ Option 键支持（按单词跳转、删除）
- ✅ 性能优化（零延迟按键处理）
- ✅ 智能输入法切换
- ✅ 智能应用排除列表

### 脚本版本说明

| 脚本文件 | 版本 | 适用人群 | 功能描述 |
| --- | --- | --- | --- |
| **`mac-style-keybindings.ahk`** | **v3.0** | **Mac/HHKB 用户** | **⭐ 强烈推荐。** Mac 快捷键 (Alt+C/V/Z...) + Emacs 导航 (Ctrl+P/N...)<br><br>• 使用 **Alt** 键作为 Mac Command（Alt+C 复制）<br>• 可选的 Win/Alt 互换（适配 HHKB DIP SW 2）<br>• 完整的 Emacs 风格光标移动<br>• Option 键支持（按单词跳转/删除） |
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

### 自定义配置

使用文本编辑器打开 `mac-style-keybindings.ahk`，可以开启以下功能：

#### 性能优化（第 10-14 行）
默认已启用：
- `SetWinDelay 0` - 窗口操作零延迟
- `SetKeyDelay 0, 0` - 按键发送零延迟
- `SetControlDelay -1` - 控件操作无延迟
- `SetMouseDelay -1` - 鼠标操作无延迟

#### Win/Alt 物理互换（第 67-91 行）- 适配 HHKB

**⚠️ 重要建议：使用注册表方式交换（推荐）**

脚本支持两种方式交换 Win 和 Alt 键：

**方式 1：注册表方式（强烈推荐）**
- **优点：** 零延迟、无状态同步问题、完全消除 Win 键卡住风险
- **缺点：** 需要管理员权限、需重启系统
- **操作步骤（方式 A - 使用提供的 .reg 文件）：**
  1. 双击 **`swap-win-alt.reg`** 应用 Win/Alt 互换
  2. 重启电脑
  3. AHK 脚本保持不变（不要取消注释第 82-91 行）
  4. （如需还原：双击 **`restore-keyboard.reg`** 并重启）
- **操作步骤（方式 B - 使用 SharpKeys 图形界面）：**
  1. 下载 **[SharpKeys](https://github.com/randyrants/sharpkeys)**（免费开源工具）
  2. 配置映射：
     - Left Windows → Left Alt
     - Left Alt → Left Windows
     - Right Windows → Right Alt
     - Right Alt → Right Windows
  3. 点击 "Write to Registry" 并重启电脑
  4. AHK 脚本保持不变（不要取消注释第 82-91 行）

**方式 2：AHK 方式（备选）**
- **优点：** 无需管理员权限、无需重启、可随时切换
- **缺点：** 可能偶尔出现 Win 键卡住（脚本第 35-36 行的释放处理器已缓解）
- **操作步骤：** 取消注释脚本第 82-91 行

```ahk
LWin::LAlt
RWin::RAlt
LAlt::LWin
RAlt::RWin
~LAlt Up::Send "{Blind}{vkE8}"
~RAlt Up::Send "{Blind}{vkE8}"
```

**如何选择？**
- **HHKB 用户（DIP SW 2=ON）：** 使用方式 1（注册表）效果最佳
- **无法修改注册表：** 使用方式 2（AHK）
- **测试或临时使用：** 使用方式 2（AHK）

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
根据你的输入法选择一个选项（默认为选项 2）：
- **选项 1：** Windows 10/11 现代输入法 - 将 `Ctrl+Space` 映射为 `Win+Space`（取消第 148 行注释以启用）
- **选项 2（默认）：** 旧版输入法 - 保持 `Ctrl+Space` 不变（无需修改）
- **选项 3：** 完全禁用输入法切换（取消第 153 行注释）

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

**Q: 按键错乱或卡住（如按退格会删除一个单词，或按 F 键触发反馈中心）？**

A: 这是 Win 键卡在按下状态导致的。**发生原因：**
- AutoHotkey 拦截 Win 键以实现 `Win+Left` → `Ctrl+Left` 等映射
- 有时按键释放事件会丢失（高 CPU 负载、快速连按）
- Windows 认为 Win 键一直按着，所以后续所有按键都变成 `Win+键`

**解决方案：**
1. **立即修复：** 手动按下并释放 Win 键
2. **重新加载脚本：** 右键托盘图标 → 重新加载脚本
3. **永久修复（v3.0+）：** 脚本已内置 Win 键释放处理器（第 35-36 行）来防止此问题
4. **根本解决（强烈推荐）：** 如果需要 Win/Alt 互换，使用**注册表方式**而非 AHK（见"Win/Alt 物理互换"章节）。这能在驱动层面彻底消除键位卡住问题。
5. **禁用 Option 键功能：** 如果不需要按单词操作，注释掉第 202-209 行（`#Left`、`#Right`、`#BS`、`#Del`）

**预防建议：**
- 不要过快连按 Win+键 组合
- **最佳方案：** 使用注册表方式进行 Win/Alt 互换（自定义配置章节的方式 1）
- 脚本的高优先级设置有助于减少此问题

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
