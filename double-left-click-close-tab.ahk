;*******************************************************
; Want a clear path for learning AutoHotkey; Take a look at our AutoHotkey Udemy courses.  They're structured in a way to make learning AHK EASY
; Right now you can  get a coupon code here: https://the-Automator.com/Learn
;*******************************************************
~LButton::
WinGetTitle, Title, A
target := "Chromium"
IfNotInString, Title, %target%
{
    ; ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control% %xpos% %ypos% (ypos < 10)
    Return
}
if (a_timesincepriorhotkey != -1 && a_timesincepriorhotkey<200)
    cnt += 1
else if (a_timesincepriorhotkey > 400)
    cnt := 0

if (cnt == 1)
    var := "double click" 
if (cnt == 2)
    var := "triple click"
if (cnt == 3)
    var := "quadra click"

settimer executeprogram, -100
return

executeprogram:
if (var == "double click")
    {
        WinGetTitle, Title, A
        target := "Chromium"
        IfNotInString, Title, %target%
        {
            Return
        }
        ; MsgBox, The active window is "%Title%".
        MouseGetPos, xpos, ypos, id, control
        If (ypos < 50)
        {
            Send ^w
            ; ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control% %xpos% %ypos% (ypos < 10)
        }
    }
; else if (var == "triple click")
;   run cmd.exe

var := ""
return