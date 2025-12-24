;;
;; Mac-style keybindings for Windows with Win/Alt keys swapped (AutoHotkey v2)
;; 符合 Mac 系统的肌肉记忆，并交换 Win 和 Alt 键
;;
#Requires AutoHotkey v2.0

; 优化按键延迟
SetKeyDelay 0

; 交换 Win 和 Alt 键
; 物理 Win 键 -> Alt 键功能 (对应 Mac 的 Command 键位置)
LWin::LAlt
RWin::RAlt
; 物理 Alt 键 -> Win 键功能
LAlt::LWin
RAlt::RWin

; 排除不需要自定义快捷键的应用程序
is_target() {
  if WinActive("ahk_class ConsoleWindowClass") ; Cygwin
    return true
  if WinActive("ahk_class MEADOW") ; Meadow
    return true
  if WinActive("ahk_class cygwin/x X rl-xterm-XTerm-0")
    return true
  if WinActive("ahk_class MozillaUIWindowClass") ; keysnail on Firefox
    return true
  if WinActive("ahk_class VMwareUnityHostWndClass") ; VMware Unity
    return true
  if WinActive("ahk_class Vim") ; GVIM
    return true
  return false
}

;
; <ctrl>b - 向左移动一个字符
;
^b:: {
  if is_target()
    Send "^b"
  else
    Send "{Left}"
}

;
; <shift><ctrl>b - 向左移动并选中
;
+^b:: {
  if is_target()
    Send "+^b"
  else
    Send "+{Left}"
}

;
; <ctrl>f - 向右移动一个字符
;
^f:: {
  if is_target()
    Send "^f"
  else
    Send "{Right}"
}

;
; <shift><ctrl>f - 向右移动并选中
;
+^f:: {
  if is_target()
    Send "+^f"
  else
    Send "+{Right}"
}

;
; <ctrl>p - 向上移动
;
^p:: {
  if is_target()
    Send "^p"
  else
    Send "{Up}"
}

;
; <shift><ctrl>p - 向上移动并选中
;
+^p:: {
  if is_target()
    Send "+^p"
  else
    Send "+{Up}"
}

;
; <ctrl>n - 向下移动
;
^n:: {
  if is_target()
    Send "^n"
  else
    Send "{Down}"
}

;
; <shift><ctrl>n - 向下移动并选中
;
+^n:: {
  if is_target()
    Send "+^n"
  else
    Send "+{Down}"
}

;
; <ctrl>d - 删除后面的字符
;
^d:: {
  if is_target()
    Send "^d"
  else
    Send "{Del}"
}

;
; <ctrl>h - 删除前面的字符 (Backspace)
;
^h:: {
  if is_target()
    Send "^h"
  else
    Send "{BS}"
}

;
; <ctrl>a - 移动到行首
;
^a:: {
  if is_target()
    Send "^a"
  else
    Send "{Home}"
}

;
; <shift><ctrl>a - 移动到行首并选中
;
+^a:: {
  if is_target()
    Send "+^a"
  else
    Send "+{Home}"
}

;
; <ctrl>e - 移动到行尾
;
^e:: {
  if is_target()
    Send "^e"
  else
    Send "{End}"
}

;
; <shift><ctrl>e - 移动到行尾并选中
;
+^e:: {
  if is_target()
    Send "+^e"
  else
    Send "+{End}"
}

;
; <alt>b - 向左移动一个单词 (物理 Win 键)
;
!b:: {
  if is_target()
    Send "!b"
  else
    Send "^{Left}"
}

;
; <shift><alt>b - 向左移动一个单词并选中 (物理 Win 键)
;
+!b:: {
  if is_target()
    Send "+!b"
  else
    Send "+^{Left}"
}

;
; <alt>f - 查找 (物理 Win 键，对应 Mac 的 Command+F)
;
!f:: {
  if is_target()
    Send "!f"
  else {
    ; 临时禁用 Ctrl+F 热键，直接发送原生 Ctrl+F
    Hotkey "^f", "Off"
    Send "^f"
    Hotkey "^f", "On"
  }
}

;
; <ctrl>w - 剪切
;
^w:: {
  if is_target()
    Send "^w"
  else
    Send "^x"
}

;
; <ctrl>y - 粘贴
;
^y:: {
  if is_target()
    Send "^y"
  else
    Send "^v"
}

;
; <ctrl>k - 删除从光标到行尾
;
^k:: {
  if is_target()
    Send "^k"
  else {
    Send "{ShiftDown}{END}{SHIFTUP}"
    Sleep 50
    Send "{Del}"
  }
}

;
; <ctrl>u - 删除从光标到行首
;
^u:: {
  if is_target()
    Send "^u"
  else {
    Send "{ShiftDown}{HOME}{SHIFTUP}"
    Sleep 50
    Send "{Del}"
  }
}

;
; <ctrl>m - 换行 (Enter)
;
^m:: {
  if is_target()
    Send "^m"
  else
    Send "{Enter}"
}

;
; <ctrl>\ - 全选
;
^\:: {
  if is_target()
    Send "^\"
  else
    Send "^a"
}

;
; Mac 风格的常用快捷键 (物理 Win 键，对应 Mac 的 Command)
;

; Alt+C - 复制 (物理 Win+C)
!c:: {
  if is_target()
    Send "!c"
  else
    Send "^c"
}

; Alt+V - 粘贴 (物理 Win+V)
!v:: {
  if is_target()
    Send "!v"
  else
    Send "^v"
}

; Alt+X - 剪切 (物理 Win+X)
!x:: {
  if is_target()
    Send "!x"
  else
    Send "^x"
}

; Alt+A - 全选 (物理 Win+A)
!a:: {
  if is_target()
    Send "!a"
  else {
    ; 临时禁用 Ctrl+A 热键，直接发送原生 Ctrl+A
    Hotkey "^a", "Off"
    Send "^a"
    Hotkey "^a", "On"
  }
}

; Alt+Z - 撤销 (物理 Win+Z)
!z:: {
  if is_target()
    Send "!z"
  else
    Send "^z"
}

; Alt+S - 保存 (物理 Win+S)
!s:: {
  if is_target()
    Send "!s"
  else
    Send "^s"
}

; Alt+W - 关闭窗口/标签 (物理 Win+W)
!w:: {
  if is_target()
    Send "!w"
  else {
    ; 临时禁用 Ctrl+W 热键，直接发送原生 Ctrl+W
    Hotkey "^w", "Off"
    Send "^w"
    Hotkey "^w", "On"
  }
}

; Alt+T - 新建标签 (物理 Win+T)
!t:: {
  if is_target()
    Send "!t"
  else
    Send "^t"
}

; Alt+N - 新建窗口 (物理 Win+N)
!n:: {
  if is_target()
    Send "!n"
  else {
    ; 临时禁用 Ctrl+N 热键，直接发送原生 Ctrl+N
    Hotkey "^n", "Off"
    Send "^n"
    Hotkey "^n", "On"
  }
}

; Alt+Q - 退出应用 (物理 Win+Q)
!q:: {
  if is_target()
    Send "!q"
  else
    Send "!{F4}"
}
