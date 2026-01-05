; ==============================================================================
; Mac Style Keybindings for Windows - Ultimate Optimized Version
; 目标：在 Windows 上复刻 Mac 系统快捷键 + Emacs 导航体验
; 版本：v3.0 优化版
; ==============================================================================
#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

; [性能优化] 提高脚本响应速度，减少延迟
SetWinDelay 0         ; 窗口操作无延迟
SetKeyDelay 0, 0      ; 按键发送无延迟（按键间隔, 按键时长）
SetControlDelay -1    ; 控件操作无延迟
SetMouseDelay -1      ; 鼠标操作无延迟

; [核心] 自动以管理员身份运行  (可选)
; 如果不加这段，脚本在任务管理器、注册表或某些游戏中会失效
; if not A_IsAdmin
; {
;     try
;     {
;         Run "*RunAs `"" A_ScriptFullPath "`""
;     }
;     ExitApp
; }

; 提高进程优先级，确保高负载下按键不延迟
ProcessSetPriority "High"

; [防止开始菜单意外弹出 + Win 键卡住修复]
; 当我们使用 Win 键相关映射时，防止 AHK 发送的掩码按键触发开始菜单
A_MenuMaskKey := "vkFF"

; 修复 Win 键卡住问题：显式处理 Win 键释放事件
; 注意：仅在使用 AHK 层 Win 键映射时有效（如 #Left、#BS 或 AHK 方式互换）
;       如果使用注册表方式互换 Win/Alt，这两行可以删除（无害但无用）
; ~LWin Up::Send "{Blind}{vk07}"  ; 左 Win 键释放时发送虚拟键码重置状态
; ~RWin Up::Send "{Blind}{vk07}"  ; 右 Win 键释放时发送虚拟键码重置状态

; ==============================================================================
; 1. 应用程序分组 (排除列表)
; ==============================================================================
; 在这些程序中禁用 Emacs 导航和 Mac 快捷键，避免干扰

; Windows 系统级工具
; GroupAdd "NativeNav", "ahk_class ConsoleWindowClass"       ; CMD/PowerShell
; GroupAdd "NativeNav", "ahk_class CabinetWClass"            ; 资源管理器
; GroupAdd "NativeNav", "ahk_exe WindowsTerminal.exe"        ; Windows Terminal
GroupAdd "NativeNav", "ahk_class VMwareUnityHostWndClass"  ; VMware
GroupAdd "NativeNav", "ahk_exe mstsc.exe"                  ; 远程桌面
; GroupAdd "NativeNav", "ahk_exe Taskmgr.exe"                ; 任务管理器

; 开发工具与编辑器 (通常自带键位)
GroupAdd "NativeNav", "ahk_class MEADOW"
GroupAdd "NativeNav", "ahk_class cygwin/x X rl-xterm-XTerm-0"
GroupAdd "NativeNav", "ahk_class Vim"                      ; GVim
GroupAdd "NativeNav", "ahk_exe emacs.exe"                  ; 真 Emacs
; GroupAdd "NativeNav", "ahk_exe code.exe"                   ; VS Code
; GroupAdd "NativeNav", "ahk_class SunAwtFrame"              ; Java (IntelliJ IDEA)
; GroupAdd "NativeNav", "ahk_class SWT_Window0"              ; Eclipse

; 游戏 (防止按键冲突) (可选)
; GroupAdd "NativeNav", "ahk_exe Overwatch.exe"              ; 守望先锋
; GroupAdd "NativeNav", "ahk_exe GenshinImpact.exe"          ; 原神

; ==============================================================================
; 2. 键位互换配置 (可选)
; ==============================================================================

; --- Win/Alt 物理互换 (HHKB DIP2 适配) ---
; ⚠️ 仅支持注册表方式交换 Win/Alt 键
;
; 【注册表方式】（驱动层交换 - 推荐）：
;   优势：零延迟、无状态同步问题、完全消除 Win 键卡住风险
;   工具：SharpKeys (https://github.com/randyrants/sharpkeys)
;        或使用项目提供的 swap-win-alt.reg 文件
;   配置：Left Windows → Left Alt, Left Alt → Left Windows
;         Right Windows → Right Alt, Right Alt → Right Windows
;   重启后生效，无需 AHK 参与
;
; 【不再提供 AHK 方式】：
;   由于 AHK 方式存在 Win 键卡住问题，已移除此方式
;   请使用注册表方式或 SharpKeys 工具进行互换

; --- CapsLock/LCtrl 物理互换 (AHK 方式 - 可选) ---
; 如果你习惯将 CapsLock 和左 Ctrl 互换（类似 HHKB 布局）
; 可以取消下面的注释启用：
;
; CapsLock::LCtrl
; LCtrl::CapsLock

; ==============================================================================
; 3. Emacs 风格光标移动 (仅在非排除列表程序中生效)
; ==============================================================================
#HotIf !WinActive("ahk_group NativeNav")

; --- 基本移动 (Ctrl+P/N/B/F) ---
^p::Up        ; Ctrl+P -> 上 (Previous line)
^n::Down      ; Ctrl+N -> 下 (Next line)
^b::Left      ; Ctrl+B -> 左 (Backward char)
^f::Right     ; Ctrl+F -> 右 (Forward char)

; --- 行首行尾 (Ctrl+A/E) ---
^a::Home      ; Ctrl+A -> 行首 (beginning of line)
^e::End       ; Ctrl+E -> 行尾 (end of line)

; --- 删除操作 (Ctrl+D/H) ---
^d::Del       ; Ctrl+D -> 删除光标后字符 (Delete char)
^h::BS        ; Ctrl+H -> 删除光标前字符 (Backspace)

; --- 文本处理 (Kill-line) ---
; Ctrl+K: 剪切光标后内容到行尾 (模拟 Emacs kill-line，加入剪贴板)
^k::{
    SendInput "+{End}"
    Sleep 5
    SendInput "^x"     ; 使用剪切而非删除，符合 Emacs kill-ring 语义
}

; Ctrl+U: 删除光标前内容到行首 (模拟部分 Shell 行为)
^u::{
    SendInput "+{Home}"
    Sleep 5
    SendInput "{Del}"  ; 使用删除，不影响剪贴板
}

; --- 其它编辑操作 ---
^w::^x        ; Ctrl+W -> 剪切 (kill-region)
^y::^v        ; Ctrl+Y -> 粘贴 (yank) 注意：会覆盖 Windows 重做功能
^m::Enter     ; Ctrl+M -> 回车 (newline)
^\::^a        ; Ctrl+\ -> 全选 (自定义)

; --- 输入法切换处理 ---
; Ctrl+Space 在 Emacs 中是设置标记，但在 Windows 中被输入法拦截
; 根据你的输入法设置选择其中一个：

; 选项 1: Windows 10/11 现代输入法 - 映射为 Win+Space（默认不启用，如需使用取消下面的注释）
; ^Space::#Space

; 选项 2: 旧版输入法 - 保持 Ctrl+Space 不变（默认配置，无需修改）

; 选项 3: 完全禁用 Ctrl+Space 输入法切换，如需使用启用下面这行：
; ^Space::Return

; ==============================================================================
; 5. Mac 风格系统级快捷键 (Command 键模拟)
; ==============================================================================
; ! 代表逻辑 Alt（如果启用了 Win/Alt 互换，则物理 Win 键变成逻辑 Alt）
; 如果未启用互换，下面的快捷键由 Alt 触发，可能不符合你的预期
; 建议：配合 Win/Alt 互换使用，或者改为 # (Win 键) 触发

!c::^c        ; Alt+C -> 复制 (Command+C)
!v::^v        ; Alt+V -> 粘贴 (Command+V)
!x::^x        ; Alt+X -> 剪切 (Command+X)
!z::^z        ; Alt+Z -> 撤销 (Command+Z)
!+z::^+z      ; Alt+Shift+Z -> 重做 (Command+Shift+Z)
!s::^s        ; Alt+S -> 保存 (Command+S)
!t::^t        ; Alt+T -> 新建标签 (Command+T)
!w::^w        ; Alt+W -> 关闭标签 (Command+W)
!n::^n        ; Alt+N -> 新建窗口 (Command+N)
!q::!F4       ; Alt+Q -> 退出应用 (Command+Q)
!r::^r        ; Alt+R -> 刷新 (Command+R)
!a::^a        ; Alt+A -> 全选 (Command+A)
!+a::^+a      ; Alt+Shift+A -> Ctrl+Shift+A (与 ^a 冲突，需显式映射)

; --- 解决冲突：保留原生 Ctrl+F / Ctrl+B ---
; 因为 Emacs 导航占用了 ^f 和 ^b，这里提供 Alt+F/B 作为查找/加粗的替代
!f::SendInput "{Ctrl down}f{Ctrl up}"  ; Alt+F -> 查找 (Command+F)
!+f::^+f      ; Alt+Shift+F -> Ctrl+Shift+F (与 ^f 冲突，需显式映射)
!b::SendInput "{Ctrl down}b{Ctrl up}"  ; Alt+B -> 加粗 (Command+B，部分应用)
!+b::^+b      ; Alt+Shift+B -> Ctrl+Shift+B (与 ^b 冲突，需显式映射)

; ==============================================================================
; 6. Mac 风格光标跳转 (Command + 方向键) (可选)
; ==============================================================================
; 这些快捷键模拟 Mac 的 Command+方向键行为

; !Up::Send "^{Home}"       ; Alt+Up -> 跳转到文档开头
; !Down::Send "^{End}"      ; Alt+Down -> 跳转到文档结尾
; !Left::Home               ; Alt+Left -> 跳转到行首
; !Right::End               ; Alt+Right -> 跳转到行尾

; ==============================================================================
; 7. Option 键功能 (按单词移动/删除) (可选)
; ==============================================================================
; # 代表逻辑 Win 键（如果启用了 Win/Alt 互换，则物理 Alt 键变成逻辑 Win）

; --- Option + 方向键 (按单词移动) ---
; #Left::^Left              ; Win+Left -> 向左移动一个单词 (Option+Left)
; #Right::^Right            ; Win+Right -> 向右移动一个单词 (Option+Right)

; --- Option + Backspace/Delete (按单词删除) ---
; #BS::^BS                  ; Win+Backspace -> 删除前一个单词 (Option+Backspace)
; #Del::^Del                ; Win+Delete -> 删除后一个单词 (Option+Delete)

; ==============================================================================
; 8. 鼠标自然滚动 (可选)
; ==============================================================================
; 反转鼠标滚轮方向，模拟 Mac 自然滚动
; 如果需要，取消下面两行的注释：
; WheelUp::WheelDown
; WheelDown::WheelUp

#HotIf ; 结束上下文定义

; ==============================================================================
; 9. 脚本加载提示
; ==============================================================================
; 脚本加载完成，显示托盘提示
TrayTip "Mac Style Keybindings 已启动", "Emacs 导航 + Mac 快捷键已激活", 1
