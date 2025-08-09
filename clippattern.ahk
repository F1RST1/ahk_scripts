#Requires AutoHotkey v2.0

clip1 := ""
clip2 := ""

OnClipboardChange clipChanged

clipChanged(dataType) {
    global clip1, clip2

    if (A_Clipboard != clip2 && A_Clipboard != "") {
        clip1 := clip2
        clip2 := A_Clipboard

        gitHashPattern := "^[a-fA-F0-9]{40}$"

        if (RegExMatch(clip1, gitHashPattern) && RegExMatch(clip2, gitHashPattern)) {
            A_Clipboard := "git difftool --dir-diff --no-prompt " clip1 " " clip2
        }
    }
}
