#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Loop, 5
{
    Send, {d 3}
    Sleep, 100
    Send, f
    Sleep, 100
    Click, x1, y1
    Sleep, 100
    Click, x2, y2
    Sleep, 100
}
