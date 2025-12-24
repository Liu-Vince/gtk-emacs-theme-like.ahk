; ==============================================================================
; 0. 脚本初始化与权限设置
; ==============================================================================
#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

; [核心] 自动以管理员身份运行
; 如果不加这段，脚本在任务管理器、注册表或某些游戏中会失效
; if not A_IsAdmin
; {
;     try
;     {
;         Run "*RunAs `"" A_ScriptFullPath "`"""
;     }
;     ExitApp
; }

; 提高进程优先级，确保高负载下按键不延迟
ProcessSetPriority "High"

; ==============================================================================
; 1. 应用程序分组 (排除列表)
; ==============================================================================
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
; GroupAdd "NativeNav", "ahk_exe code.exe"                   ; VS Code
; GroupAdd "NativeNav", "ahk_class SunAwtFrame"              ; Java (IntelliJ IDEA)
; GroupAdd "NativeNav", "ahk_class SWT_Window0"              ; Eclipse

; 游戏 (防止按键冲突) (可选)
; GroupAdd "NativeNav", "ahk_exe Overwatch.exe"              ; 守望先锋
; GroupAdd "NativeNav", "ahk_exe GenshinImpact.exe"          ; 原神

; ==============================================================================
; 2. 全局 Win/Alt 物理互换 (HHKB DIP2 适配)
; ==============================================================================
; 物理 Win -> 逻辑 Alt (Command)
LWin::LAlt
RWin::RAlt
; 物理 Alt -> 逻辑 Win (Option)
LAlt::LWin
RAlt::RWin

; ==============================================================================
; 3. Emacs 风格光标移动 (仅在非排除列表程序中生效)
; ==============================================================================
#HotIf !WinActive("ahk_group NativeNav")

; 基本移动
^p::Up
^n::Down
^b::Left
^f::Right

; 选中移动
+^p::+Up
+^n::+Down
+^b::+Left
+^f::+Right

; 行首行尾
^a::Home
^e::End
+^a::+Home
+^e::+End

; 删除操作
^d::Del
^h::BS
^k::{
    Send "+{End}"
    Sleep 10 
    Send "{Del}"
}
; Ctrl+U 删除到行首
^u::{
    Send "+{Home}"
    Sleep 10
    Send "{Del}"
}

; 其它编辑操作
^w::^x        ; Ctrl+W 剪切
^y::^v        ; Ctrl+Y 粘贴
^m::Enter     ; Ctrl+M 回车
^\::^a        ; Ctrl+\ 全选

; ==============================================================================
; 4. Mac 风格系统级快捷键 (利用互换后的 LAlt 触发)
; ==============================================================================
; ! 代表逻辑 Alt（即物理 Win 键）

!c::^c        ; 复制
!v::^v        ; 粘贴
!x::^x        ; 剪切
!z::^z        ; 撤销
!+z::^+z      ; 重做
!s::^s        ; 保存
!t::^t        ; 新建标签
!w::^w        ; 关闭标签
!n::^n        ; 新建窗口
!q::!F4       ; 退出应用
!r::^r        ; 刷新
!a::^a        ; 全选 

; 解决冲突：发送原生 Ctrl+F / Ctrl+B
!f::SendInput "{Ctrl down}f{Ctrl up}"
!b::SendInput "{Ctrl down}b{Ctrl up}"

; ==============================================================================
; 5. Mac 风格光标跳转 (Command + 方向键)
; ==============================================================================
!Up::Send "^{Home}"    ; Cmd+上 -> 文首
!Down::Send "^{End}"   ; Cmd+下 -> 文末
!Left::Home            ; Cmd+左 -> 行首
!Right::End            ; Cmd+右 -> 行尾

+!Up::Send "+^{Home}"  
+!Down::Send "+^{End}" 
+!Left::+Home          
+!Right::+End          

; Option + 方向键 (按单词移动)
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
