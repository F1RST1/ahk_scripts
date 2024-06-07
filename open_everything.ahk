~ctrl Up::
   If (A_TimeSincePriorHotkey < 1100 && A_TimeSincePriorHotkey > 150 ){ ; 50 was to short. i tested it with holding the ctrl key
    if(A_PriorKey <> "LControl" && A_PriorKey <> "RControl")
        return
   ; MsgBox, doubleCtrl detected
   Run, D:\Portable\Everything\Everything.exe
}