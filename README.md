# gtk-emacs-theme-like.ahk

[English](#english) | [中文](#chinese)

---

<a name="english"></a>
## English

### Description
This tiny script allows you to use the gtk-emacs-key-theme like bindings on Windows, which is written in AutoHotkey (AHK) language. This script is forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk).

### Version Support
- **gtk-emacs-theme-like.ahk** - AutoHotkey v1 (Legacy)
- **gtk-emacs-theme-like-v2.ahk** - AutoHotkey v2 (Recommended)
- **gtk-emacs-theme-like-v2-swap-win-alt.ahk** - AutoHotkey v2 with Win/Alt keys swapped

### Installation
1. Download and install [AutoHotkey v2](https://www.autohotkey.com/)
2. Download one of the script files based on your needs
3. Double-click the .ahk file to run it
4. (Optional) Add to Windows Startup folder to run automatically

### Supported Keybindings
<table>
  <tr>
    <th>Keybinding</th>
    <th>Function</th>
  </tr>
<tr>
<td>Ctrl+B</td>
<td>move cursor backward</td>
</tr>
<tr>
<td>Shift+Ctrl+B</td>
<td>move cursor backward selecting chars</td>
</tr>
<tr>
<td>Ctrl+F</td>
<td>move cursor forward</td>
</tr>
<tr>
<td>Shift+Ctrl+F</td>
<td>move cursor forward selecting chars</td>
</tr>
<tr>
<td>Ctrl+P</td>
<td>move cursor up</td>
</tr>
<tr>
<td>Shift+Ctrl+P</td>
<td>move cursor up selecting chars</td>
</tr>
<tr>
<td>Ctrl+N</td>
<td>move cursor down</td>
</tr>
<tr>
<td>Shift+Ctrl+N</td>
<td>move cursor down selecting chars</td>
</tr>
<tr>
<td>Ctrl+D</td>
<td>delete following char</td>
</tr>
<tr>
<td>Ctrl+H</td>
<td>delete previous char</td>
</tr>
<tr>
<td>Ctrl+A</td>
<td>move cursor beginning of current line</td>
</tr>
<tr>
<td>Shift+Ctrl+A</td>
<td>move cursor beginning of current line selecting chars</td>
</tr>
<tr>
<td>Ctrl+E</td>
<td>move cursor end of current line</td>
</tr>
<tr>
<td>Shift+Ctrl+E</td>
<td>move cursor end of current line selecting chars</td>
</tr>
<tr>
<td>Alt+B*</td>
<td>move cursor one word backward</td>
</tr>
<tr>
<td>Shift+Alt+B*</td>
<td>move cursor one word backward selecting chars</td>
</tr>
<tr>
<td>Alt+F*</td>
<td>move cursor one word forward</td>
</tr>
<tr>
<td>Shift+Alt+F*</td>
<td>move cursor one word forward selecting chars</td>
</tr>
<tr>
<td>Ctrl+W</td>
<td>cut</td>
</tr>
<tr>
<td>Ctrl+Y</td>
<td>paste</td>
</tr>
<tr>
<td>Ctrl+K</td>
<td>delete chars from cursor to end of line</td>
</tr>
<tr>
<td>Ctrl+U</td>
<td>delete chars from cursor to beginning of line</td>
</tr>
<tr>
<td>Ctrl+M</td>
<td>new line(enter)</td>
</tr>
<tr>
<td>Ctrl+R</td>
<td>find</td>
</tr>
<tr>
<td>Ctrl+\</td>
<td>select all</td>
</tr>
</table>

\* In the **swap-win-alt** version, use the physical Alt key (which is mapped to Win).

### Win/Alt Key Swap Feature
The `gtk-emacs-theme-like-v2-swap-win-alt.ahk` script swaps the Win and Alt keys:
- Physical **Alt** key → Functions as **Win** key
- Physical **Win** key → Functions as **Alt** key

This is particularly useful for:
- Mac keyboard users on Windows (mimics macOS Command key layout)
- Users who prefer Alt key placement for system shortcuts
- Better ergonomics when frequently using Win key shortcuts

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
- **gtk-emacs-theme-like.ahk** - AutoHotkey v1 版本（旧版）
- **gtk-emacs-theme-like-v2.ahk** - AutoHotkey v2 版本（推荐）
- **gtk-emacs-theme-like-v2-swap-win-alt.ahk** - AutoHotkey v2 版本（Win/Alt 键互换）

### 安装方法
1. 下载并安装 [AutoHotkey v2](https://www.autohotkey.com/)
2. 根据需求下载其中一个脚本文件
3. 双击 .ahk 文件运行
4. （可选）添加到 Windows 启动文件夹以实现自动运行

### 支持的快捷键
<table>
  <tr>
    <th>快捷键</th>
    <th>功能</th>
  </tr>
<tr>
<td>Ctrl+B</td>
<td>光标向后移动一个字符</td>
</tr>
<tr>
<td>Shift+Ctrl+B</td>
<td>光标向后移动一个字符并选中</td>
</tr>
<tr>
<td>Ctrl+F</td>
<td>光标向前移动一个字符</td>
</tr>
<tr>
<td>Shift+Ctrl+F</td>
<td>光标向前移动一个字符并选中</td>
</tr>
<tr>
<td>Ctrl+P</td>
<td>光标向上移动</td>
</tr>
<tr>
<td>Shift+Ctrl+P</td>
<td>光标向上移动并选中</td>
</tr>
<tr>
<td>Ctrl+N</td>
<td>光标向下移动</td>
</tr>
<tr>
<td>Shift+Ctrl+N</td>
<td>光标向下移动并选中</td>
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
<td>Ctrl+A</td>
<td>光标移动到行首</td>
</tr>
<tr>
<td>Shift+Ctrl+A</td>
<td>光标移动到行首并选中</td>
</tr>
<tr>
<td>Ctrl+E</td>
<td>光标移动到行尾</td>
</tr>
<tr>
<td>Shift+Ctrl+E</td>
<td>光标移动到行尾并选中</td>
</tr>
<tr>
<td>Alt+B*</td>
<td>光标向后移动一个单词</td>
</tr>
<tr>
<td>Shift+Alt+B*</td>
<td>光标向后移动一个单词并选中</td>
</tr>
<tr>
<td>Alt+F*</td>
<td>光标向前移动一个单词</td>
</tr>
<tr>
<td>Shift+Alt+F*</td>
<td>光标向前移动一个单词并选中</td>
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
<td>Ctrl+K</td>
<td>从光标删除到行尾</td>
</tr>
<tr>
<td>Ctrl+U</td>
<td>从光标删除到行首</td>
</tr>
<tr>
<td>Ctrl+M</td>
<td>换行（回车）</td>
</tr>
<tr>
<td>Ctrl+R</td>
<td>查找</td>
</tr>
<tr>
<td>Ctrl+\</td>
<td>全选</td>
</tr>
</table>

\* 在 **swap-win-alt** 版本中，使用物理 Alt 键（已映射为 Win 键）。

### Win/Alt 键互换功能
`gtk-emacs-theme-like-v2-swap-win-alt.ahk` 脚本会互换 Win 键和 Alt 键：
- 物理 **Alt** 键 → 功能为 **Win** 键
- 物理 **Win** 键 → 功能为 **Alt** 键

此功能特别适用于：
- 在 Windows 上使用 Mac 键盘的用户（模拟 macOS Command 键布局）
- 偏好使用 Alt 键位置进行系统快捷键操作的用户
- 需要频繁使用 Win 键快捷键时提供更好的人体工学体验

### 排除的应用程序
脚本会在以下应用程序中自动禁用 Emacs 快捷键绑定：
- Cygwin
- Meadow
- GVIM
- 带有 keysnail 的 Firefox
- VMware Unity

你可以在 `is_target()` 函数中自定义排除的应用程序。

### 更新日志
- **2025-12**: 添加 AutoHotkey v2 版本支持，新增 Win/Alt 键互换功能版本
- **Earlier**: 修复 issue #3，更新文档

### 许可证
This project is forked from [usi3/emacs.ahk](https://github.com/usi3/emacs.ahk)

### 贡献
欢迎提交 Issue 和 Pull Request。
