#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

F1::
    MouseGetPos, xPos, yPos
    relativeX := xPos / A_ScreenWidth
    relativeY := yPos / A_ScreenHeight
    clipboard := "(" . relativeX . ", " . relativeY . ")."
return