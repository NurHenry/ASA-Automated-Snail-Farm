#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

F5::
toggle := !toggle
if (toggle)
{
    Send, {d down}
    Sleep, 1000
    Send, {d up}
    Sleep, 100
    Send, f
    Sleep, 1000
    MouseClick, left, A_ScreenWidth * 0.717187, A_ScreenHeight * 0.182407
    Sleep, 500
    Send, {ESC}

}
return

; get all Die relative Position des Mauszeigers ist (0.717187, 0.182407).