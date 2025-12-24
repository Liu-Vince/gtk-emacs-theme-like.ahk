# gtk-emacs-theme-like.ahk

[English](#english) | [中文](#chinese)

---

<a name="english"></a>
## English

### Description
This tiny script allows you to use the gtk-emacs-key-theme like bindings on Windows, which is written in AutoHotkey (AHK) language. This script is forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).

### Version Support

**GTK Emacs Style (Original):**
- **gtk-emacs-theme-like.ahk** - AutoHotkey v1 (Legacy)
- **gtk-emacs-theme-like-v2.ahk** - AutoHotkey v2
- **gtk-emacs-theme-like-v2-swap-win-alt.ahk** - AutoHotkey v2 with Win/Alt keys swapped

**Mac Style (NEW - Recommended for HHKB users):**
- **mac-style-keybindings.ahk** - Mac-style keybindings with Emacs navigation (AutoHotkey v2)
- **mac-style-keybindings-swap-win-alt.ahk** - Mac-style with Win/Alt swapped (AutoHotkey v2, **Recommended for HHKB**)

### Installation
1. Download and install [AutoHotkey v2](https://www.autohotkey.com/)
2. Choose the script that fits your needs:
   - **For HHKB keyboard users**: Use `mac-style-keybindings-swap-win-alt.ahk` for the best Mac-like experience
   - **For general use**: Use `mac-style-keybindings.ahk` or `gtk-emacs-theme-like-v2.ahk`
3. Double-click the .ahk file to run it
4. (Optional) Add to Windows Startup folder to run automatically

### Which Script Should I Use?

| Script | Best For | Key Features |
|--------|----------|-------------|
| `mac-style-keybindings-swap-win-alt.ahk` | HHKB/Mac keyboard users | Emacs navigation + Mac shortcuts + Win/Alt swap |
| `mac-style-keybindings.ahk` | Users who want Mac-style shortcuts | Emacs navigation + Mac shortcuts |
| `gtk-emacs-theme-like-v2.ahk` | Pure Emacs keybinding users | Original Emacs-style only |

### Supported Keybindings

#### Emacs-Style Navigation (All versions)
<table>
  <tr>
    <th>Keybinding</th>
    <th>Function</th>
  </tr>
<tr>
<td>Ctrl+B / Shift+Ctrl+B</td>
<td>Move cursor backward / with selection</td>
</tr>
<tr>
<td>Ctrl+F / Shift+Ctrl+F</td>
<td>Move cursor forward / with selection</td>
</tr>
<tr>
<td>Ctrl+P / Shift+Ctrl+P</td>
<td>Move cursor up / with selection</td>
</tr>
<tr>
<td>Ctrl+N / Shift+Ctrl+N</td>
<td>Move cursor down / with selection</td>
</tr>
<tr>
<td>Ctrl+A / Shift+Ctrl+A</td>
<td>Move to line beginning / with selection</td>
</tr>
<tr>
<td>Ctrl+E / Shift+Ctrl+E</td>
<td>Move to line end / with selection</td>
</tr>
<tr>
<td>Ctrl+D</td>
<td>Delete following char</td>
</tr>
<tr>
<td>Ctrl+H</td>
<td>Delete previous char</td>
</tr>
<tr>
<td>Ctrl+K</td>
<td>Delete from cursor to end of line</td>
</tr>
<tr>
<td>Ctrl+U</td>
<td>Delete from cursor to beginning of line</td>
</tr>
<tr>
<td>Ctrl+W</td>
<td>Cut</td>
</tr>
<tr>
<td>Ctrl+Y</td>
<td>Paste</td>
</tr>
<tr>
<td>Ctrl+M</td>
<td>Enter</td>
</tr>
<tr>
<td>Ctrl+\</td>
<td>Select all</td>
</tr>
<tr>
<td>Alt+B*</td>
<td>Move one word backward</td>
</tr>
</table>

#### Mac-Style Shortcuts (mac-style-keybindings versions only)
<table>
  <tr>
    <th>Keybinding**</th>
    <th>Function</th>
    <th>Mac Equivalent</th>
  </tr>
<tr>
<td>Alt+F (Win+F***)</td>
<td>Find</td>
<td>Command+F</td>
</tr>
<tr>
<td>Alt+C (Win+C***)</td>
<td>Copy</td>
<td>Command+C</td>
</tr>
<tr>
<td>Alt+V (Win+V***)</td>
<td>Paste</td>
<td>Command+V</td>
</tr>
<tr>
<td>Alt+X (Win+X***)</td>
<td>Cut</td>
<td>Command+X</td>
</tr>
<tr>
<td>Alt+A (Win+A***)</td>
<td>Select all</td>
<td>Command+A</td>
</tr>
<tr>
<td>Alt+Z (Win+Z***)</td>
<td>Undo</td>
<td>Command+Z</td>
</tr>
<tr>
<td>Alt+S (Win+S***)</td>
<td>Save</td>
<td>Command+S</td>
</tr>
<tr>
<td>Alt+W (Win+W***)</td>
<td>Close tab</td>
<td>Command+W</td>
</tr>
<tr>
<td>Alt+T (Win+T***)</td>
<td>New tab</td>
<td>Command+T</td>
</tr>
<tr>
<td>Alt+N (Win+N***)</td>
<td>New window</td>
<td>Command+N</td>
</tr>
<tr>
<td>Alt+Q (Win+Q***)</td>
<td>Quit application</td>
<td>Command+Q</td>
</tr>
</table>

\* In **gtk-emacs-theme-like-v2-swap-win-alt.ahk**, Alt+B/F use physical Alt key (mapped to Win).

\*\* For **mac-style-keybindings.ahk**, use Alt key combinations as shown.

\*\*\* For **mac-style-keybindings-swap-win-alt.ahk**, use physical Win key (mapped to Alt) for Mac-style shortcuts. This matches the muscle memory of Mac Command key position.

### Win/Alt Key Swap Feature

Scripts with **swap-win-alt** in the name swap the Win and Alt keys:
- Physical **Win** key → Functions as **Alt** key (Mac Command key position)
- Physical **Alt** key → Functions as **Win** key

This is particularly useful for:
- **HHKB keyboard users** - Matches Mac keyboard layout perfectly
- **Mac keyboard users on Windows** - Mimics macOS Command key layout
- Users who want Mac muscle memory on Windows
- Better ergonomics when using shortcuts frequently

**Recommended for HHKB users**: Use `mac-style-keybindings-swap-win-alt.ahk` for the complete Mac experience with both Emacs navigation and Mac-style shortcuts.

### Excluded Applications
The script automatically disables Emacs keybindings in the following applications:
- Cygwin
- Meadow
- GVIM
- Firefox with keysnail
- VMware Unity

You can customize the excluded applications in the `is_target()` function.

---

<a name="chinese"></a>
## 中文

### 描述
这个小脚本可以让你在 Windows 上使用类似 GTK Emacs 键盘主题的快捷键绑定，使用 AutoHotkey (AHK) 语言编写。此脚本 fork 自 [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk)。

### 版本支持

**GTK Emacs 风格（原版）:**
- **gtk-emacs-theme-like.ahk** - AutoHotkey v1 版本（旧版）
- **gtk-emacs-theme-like-v2.ahk** - AutoHotkey v2 版本
- **gtk-emacs-theme-like-v2-swap-win-alt.ahk** - AutoHotkey v2 版本（Win/Alt 键互换）

**Mac 风格（新版 - HHKB 用户推荐）:**
- **mac-style-keybindings.ahk** - Mac 风格快捷键 + Emacs 导航（AutoHotkey v2）
- **mac-style-keybindings-swap-win-alt.ahk** - Mac 风格 + Win/Alt 互换（AutoHotkey v2，**HHKB 推荐**）

### 安装方法
1. 下载并安装 [AutoHotkey v2](https://www.autohotkey.com/)
2. 根据使用场景选择脚本：
   - **HHKB 键盘用户**: 使用 `mac-style-keybindings-swap-win-alt.ahk` 获得最佳 Mac 体验
   - **普通用户**: 使用 `mac-style-keybindings.ahk` 或 `gtk-emacs-theme-like-v2.ahk`
3. 双击 .ahk 文件运行
4. （可选）添加到 Windows 启动文件夹以实现自动运行

### 应该使用哪个脚本？

| 脚本 | 适用人群 | 主要特性 |
|------|---------|---------|
| `mac-style-keybindings-swap-win-alt.ahk` | HHKB/Mac 键盘用户 | Emacs 导航 + Mac 快捷键 + Win/Alt 互换 |
| `mac-style-keybindings.ahk` | 想要 Mac 风格快捷键的用户 | Emacs 导航 + Mac 快捷键 |
| `gtk-emacs-theme-like-v2.ahk` | 纯 Emacs 键位用户 | 仅原版 Emacs 风格 |

### 支持的快捷键

#### Emacs 风格导航（所有版本）
<table>
  <tr>
    <th>快捷键</th>
    <th>功能</th>
  </tr>
<tr>
<td>Ctrl+B / Shift+Ctrl+B</td>
<td>向左移动光标 / 选中</td>
</tr>
<tr>
<td>Ctrl+F / Shift+Ctrl+F</td>
<td>向右移动光标 / 选中</td>
</tr>
<tr>
<td>Ctrl+P / Shift+Ctrl+P</td>
<td>向上移动光标 / 选中</td>
</tr>
<tr>
<td>Ctrl+N / Shift+Ctrl+N</td>
<td>向下移动光标 / 选中</td>
</tr>
<tr>
<td>Ctrl+A / Shift+Ctrl+A</td>
<td>移动到行首 / 选中</td>
</tr>
<tr>
<td>Ctrl+E / Shift+Ctrl+E</td>
<td>移动到行尾 / 选中</td>
</tr>
<tr>
<td>Ctrl+D</td>
<td>删除后一个字符</td>
</tr>
<tr>
<td>Ctrl+H</td>
<td>删除前一个字符</td>
</tr>
<tr>
<td>Ctrl+K</td>
<td>从光标删除到行尾</td>
</tr>
<tr>
<td>Ctrl+U</td>
<td>从光标删除到行首</td>
</tr>
<tr>
<td>Ctrl+W</td>
<td>剪切</td>
</tr>
<tr>
<td>Ctrl+Y</td>
<td>粘贴</td>
</tr>
<tr>
<td>Ctrl+M</td>
<td>回车</td>
</tr>
<tr>
<td>Ctrl+\</td>
<td>全选</td>
</tr>
<tr>
<td>Alt+B*</td>
<td>向左移动一个单词</td>
</tr>
</table>

#### Mac 风格快捷键（仅 mac-style-keybindings 版本）
<table>
  <tr>
    <th>快捷键**</th>
    <th>功能</th>
    <th>对应 Mac 快捷键</th>
  </tr>
<tr>
<td>Alt+F (Win+F***)</td>
<td>查找</td>
<td>Command+F</td>
</tr>
<tr>
<td>Alt+C (Win+C***)</td>
<td>复制</td>
<td>Command+C</td>
</tr>
<tr>
<td>Alt+V (Win+V***)</td>
<td>粘贴</td>
<td>Command+V</td>
</tr>
<tr>
<td>Alt+X (Win+X***)</td>
<td>剪切</td>
<td>Command+X</td>
</tr>
<tr>
<td>Alt+A (Win+A***)</td>
<td>全选</td>
<td>Command+A</td>
</tr>
<tr>
<td>Alt+Z (Win+Z***)</td>
<td>撤销</td>
<td>Command+Z</td>
</tr>
<tr>
<td>Alt+S (Win+S***)</td>
<td>保存</td>
<td>Command+S</td>
</tr>
<tr>
<td>Alt+W (Win+W***)</td>
<td>关闭标签</td>
<td>Command+W</td>
</tr>
<tr>
<td>Alt+T (Win+T***)</td>
<td>新建标签</td>
<td>Command+T</td>
</tr>
<tr>
<td>Alt+N (Win+N***)</td>
<td>新建窗口</td>
<td>Command+N</td>
</tr>
<tr>
<td>Alt+Q (Win+Q***)</td>
<td>退出应用</td>
<td>Command+Q</td>
</tr>
</table>

\* 在 **gtk-emacs-theme-like-v2-swap-win-alt.ahk** 中，Alt+B/F 使用物理 Alt 键（映射为 Win）。

\*\* 对于 **mac-style-keybindings.ahk**，使用表中所示的 Alt 键组合。

\*\*\* 对于 **mac-style-keybindings-swap-win-alt.ahk**，使用物理 Win 键（映射为 Alt）来实现 Mac 风格快捷键。这符合 Mac Command 键的肌肉记忆。

### Win/Alt 键互换功能

名称中包含 **swap-win-alt** 的脚本会互换 Win 键和 Alt 键：
- 物理 **Win** 键 → 功能为 **Alt** 键（Mac Command 键位置）
- 物理 **Alt** 键 → 功能为 **Win** 键

此功能特别适用于：
- **HHKB 键盘用户** - 完美匹配 Mac 键盘布局
- **在 Windows 上使用 Mac 键盘的用户** - 模拟 macOS Command 键布局
- 希望在 Windows 上保持 Mac 肌肉记忆的用户
- 频繁使用快捷键时提供更好的人体工学体验

**HHKB 用户推荐**: 使用 `mac-style-keybindings-swap-win-alt.ahk` 获得完整的 Mac 体验，同时拥有 Emacs 导航和 Mac 风格快捷键。

### 排除的应用程序
脚本会在以下应用程序中自动禁用 Emacs 快捷键绑定：
- Cygwin
- Meadow
- GVIM
- 带有 keysnail 的 Firefox
- VMware Unity

你可以在 `is_target()` 函数中自定义排除的应用程序。

### 更新日志
- **2025-12-24**: 新增 Mac 风格快捷键版本，修复键位冲突问题，完美支持 HHKB 键盘
- **2025-12**: 添加 AutoHotkey v2 版本支持，新增 Win/Alt 键互换功能版本
- **Earlier**: 修复 issue #3，更新文档

### 许可证
This project is forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk)

### 贡献
欢迎提交 Issue 和 Pull Request。
