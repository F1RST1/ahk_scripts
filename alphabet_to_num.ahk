toggle := false

!n:: ; Alt+N toggles remapping
    toggle := !toggle

    ; Get work area size (excluding taskbar)
    SysGet, MonitorWorkArea, MonitorWorkArea
    right := MonitorWorkAreaRight
    bottom := MonitorWorkAreaBottom

    ; Offset so tooltip isn't blocked by the screen edge/taskbar
    offsetX := 20
    offsetY := 40

    ; Show tooltip at bottom right
    Tooltip, % (toggle ? "Remapping ENABLED" : "Remapping DISABLED"), % right - offsetX, % bottom - offsetY
    SetTimer, RemoveTooltip, -1000
return

RemoveTooltip:
    Tooltip
return

#If toggle

u::SendInput 7
i::SendInput 8
o::SendInput 9
j::SendInput 4
k::SendInput 5
l::SendInput 6
m::SendInput 1
,::SendInput 2
.::SendInput 3
Space::SendInput 0


#If
