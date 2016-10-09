#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

; Using CapsLock LED for other purposes
; http://superuser.com/questions/613747/using-capslock-led-for-other-purposes
#Include led.ahk

; I don't know kbd, so try all
_KeyboardLED(Cmd) {
    Loop, 6 {
        KeyboardLED(4, Cmd, A_Index-1)
    }
}

; http://www.autohotkey.co.kr/cgi/board.php?bo_table=script&wr_id=357
IME_CHECK(WinTitle) {
    WinGet,hWnd,ID,%WinTitle%
    DefaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint, hWnd, Uint)
    DetectSave := A_DetectHiddenWindows       
    DetectHiddenWindows,ON                          
    SendMessage 0x283, 0x005, "", , ahk_id %DefaultIMEWnd%
    if (DetectSave <> A_DetectHiddenWindows)
        DetectHiddenWindows,%DetectSave%
    return ErrorLevel
}

CapsLock::
    Send, {vk15sc138}
    If IME_CHECK("A") = 1 ; If Korean,
        _KeyboardLED("on")
    Else
        _KeyboardLED("off")
Return