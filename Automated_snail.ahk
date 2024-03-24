#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; press f5 for start 
; press f6 for exit

F5::
Loop
{
    Loop, 2 ; so long will the main loop happen ( number of snail)
    {
        Sleep, 1000 
        SendInput, {d down} 
        Sleep, 1000         ; this say how long d should be pressed down in milisecond   ---> maybe you need to change it it depend on the distance between snails
        SendInput, {d up}
        Sleep, 500          
        SendInput, f
        Sleep, 1000
        MouseClick, left, A_ScreenWidth * 0.717187, A_ScreenHeight * 0.182407   ; this click transfer all
        Sleep, 500
        SendInput, {ESC}     ; go out of inventory
    }

                ; this happen after main loop

    SoundBeep, 750, 500 ; debug that extended loop start now

    Sleep 500               
    SendInput, {Down down}  ; look down for open door
    Sleep, 1000
    SendInput, {Down up}

    Sleep, 500
    SendInput, e            ; open the door

    Sleep, 5000             ; char. die in this time, maybe increase because die speed

    ; you need to add relative coords from the relative coords finder here on x1 and y1

    MouseClick, left, A_ScreenWidth * x1, A_ScreenHeight * y1   ; click on coords of the bed

    Sleep, 500

    MouseClick, left, A_ScreenWidth * x2, A_ScreenHeight * y2   ; confirm respawn
}
return

F6::ExitApp
