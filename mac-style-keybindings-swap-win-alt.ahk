; ==============================================================================
; 0. 脚本初始化与权限设置
; ==============================================================================
#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

; [核心] 自动以管理员身份运行
; 强烈建议：如果在 IDEA、任务管理器或游戏中使用失效，请取消下面代码块的注释
/*
if not A_IsAdmin
{
    try
    {
        Run "*RunAs `"" A_ScriptFullPath "`"""
    }
    ExitApp
}
*/

; 提高进程优先级，确保高负载下按键不延迟
ProcessSetPriority "High"

; ==============================================================================
; 1. 应用程序分组 (排除列表)
; ==============================================================================
; 在这些程序中，脚本将暂停工作（保留程序原生快捷键）

; Windows 系统级工具
; GroupAdd "NativeNav", "ahk_class ConsoleWindowClass"       ; CMD/PowerShell
; GroupAdd "NativeNav", "ahk_class CabinetWClass"            ; 资源管理器
; GroupAdd "NativeNav", "ahk_exe WindowsTerminal.exe"        ; Windows Terminal
GroupAdd "NativeNav", "ahk_class VMwareUnityHostWndClass"  ; VMware
GroupAdd "NativeNav", "ahk_exe mstsc.exe"                  ; 远程桌面
; GroupAdd "NativeNav", "ahk_exe Taskmgr.exe"                ; 任务管理器

; 开发工具与编辑器 (通常自带键位，如果需要 AHK 接管请保持注释)
GroupAdd "NativeNav", "ahk_class MEADOW"
GroupAdd "NativeNav", "ahk_class cygwin/x X rl-xterm-XTerm-0"
GroupAdd "NativeNav", "ahk_class Vim"                      ; GVim
; GroupAdd "NativeNav", "ahk_exe code.exe"                   ; VS Code
; GroupAdd "NativeNav", "ahk_class SunAwtFrame"              ; Java (IntelliJ IDEA)
; GroupAdd "NativeNav", "ahk_class SWT_Window0"              ; Eclipse

; 游戏 (防止按键冲突)
; GroupAdd "NativeNav", "ahk_exe Overwatch.exe"
; GroupAdd "NativeNav", "ahk_exe GenshinImpact.exe"

; ==============================================================================
; 2. 全局 Win/Alt 物理互换 (HHKB DIP2 适配)
; ==============================================================================
; 物理 Win -> 逻辑 Alt (对应 Mac Command 位置)
LWin::LAlt
RWin::RAlt
; 物理 Alt -> 逻辑 Win (对应 Mac Option 位置)
LAlt::LWin
RAlt::RWin

; ==============================================================================
; 3. Emacs 风格光标移动 (仅在非排除列表程序中生效)
; ==============================================================================
#HotIf !WinActive("ahk_group NativeNav")

; --- 基本移动 (上下左右) ---
^p::Up
^n::Down
^b::Left
^f::Right

; --- 选中移动 (Shift + 上下左右) ---
+^p::+Up
+^n::+Down
+^b::+Left
+^f::+Right

; --- 行首行尾 ---
^a::Home
^e::End
+^a::+Home
+^e::+End

; --- 删除操作 ---
^d::Del
^h::BS

; Ctrl+K: 删除光标后所有内容
^k::{
    SendInput "+{End}"
    Sleep 5
    SendInput "{Del}"
}

; Ctrl+U: 删除光标前所有内容 (有些 Shell 是删整行，这里模拟 Windows 习惯删到行首)
^u::{
    SendInput "+{Home}"
    Sleep 5
    SendInput "{Del}"
}

; --- 其它编辑操作 ---
^w::^x        ; Ctrl+W 剪切 (Emacs 习惯)
^y::^v        ; Ctrl+Y 粘贴 (Emacs 习惯)
^m::Enter     ; Ctrl+M 回车
^\::^a        ; Ctrl+\ 全选

; ==============================================================================
; 4. Mac 风格系统级快捷键 (利用互换后的 LAlt 触发)
; ==============================================================================
; 这里的 ! 对应物理 Win 键 (因为上面已经交换了)

; --- 剪贴板操作 ---
!c::^c        ; 复制
!x::^x        ; 剪切

; [修复点] 粘贴相关
!v::^v        ; 粘贴
!+v::^+v      ; 纯文本粘贴/粘贴历史 (Shift+Cmd+V -> Ctrl+Shift+V)

; --- 撤销/重做 ---
!z::^z        ; 撤销
!+z::^+z      ; 重做

; --- 文件/标签操作 ---
!s::^s        ; 保存
!+s::^+s      ; 另存为 (Cmd+Shift+S -> Ctrl+Shift+S)
!t::^t        ; 新建标签
!+t::^+t      ; 恢复关闭标签 (Cmd+Shift+T -> Ctrl+Shift+T)
!w::^w        ; 关闭标签
!n::^n        ; 新建窗口
!+n::^+n      ; 新建隐身窗口 (Cmd+Shift+N -> Ctrl+Shift+N)

; --- 应用控制 ---
!q::!F4       ; 退出应用 (Cmd+Q -> Alt+F4)
!r::^r        ; 刷新
!a::^a        ; 全选 

; --- 解决冲突 ---
; 防止 Win+F / Win+B 触发 Windows 反馈中心或其它系统快捷键
; 强制映射为 Ctrl+F (查找) 和 Ctrl+B (加粗)
!f::SendInput "{Ctrl down}f{Ctrl up}"
!b::SendInput "{Ctrl down}b{Ctrl up}"

; ==============================================================================
; 5. Mac 风格光标跳转 (Command + 方向键)
; ==============================================================================
; Cmd + 方向键 (文首/文末/行首/行尾)
!Up::Send "^{Home}"
!Down::Send "^{End}"
!Left::Home
!Right::End

; Cmd + Shift + 方向键 (选中跳转)
+!Up::Send "+^{Home}"
+!Down::Send "+^{End}"
+!Left::+Home
+!Right::+End

; Option + 方向键 (按单词移动)
; 这里的 # 对应物理 Alt 键 (因为上面交换了，Option 变成了逻辑 Win)
#Left::^Left
#Right::^Right
+#Left::+^Left
+#Right::+^Right

; ==============================================================================
; 6. 鼠标自然滚动 (可选)
; ==============================================================================
; WheelUp::WheelDown
; WheelDown::WheelUp

#HotIf ; 结束上下文定义
