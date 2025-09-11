#Requires AutoHotkey v2.0
#SingleInstance Force

; Create tray menu
A_TrayMenu.Delete()  ; Clear default menu
A_TrayMenu.Add("Look Up Word", ShowDictInput)
A_TrayMenu.Default := "Look Up Word"  ; Make this the default action on single click
A_TrayMenu.ClickCount := 1  ; Respond to single click

ShowDictInput(*) {
    ; Show input box for dictionary lookup
    word := InputBox("Enter a word to look up:", "Dictionary Lookup", "w300 h150", "").Value
    
    ; If user didn't cancel and entered something, run the dict command
    if (word != "") {
        ; Run "C:\portable\shortcuts\dict.bat"
        Run Format('"C:\portable\shortcuts\dict.bat" "{1}"',word)

    }
}

; Keep script running persistently
Persistent
