; When CapsLock is held down with other keys, send remapped keys

;; Make CapsLock act as a modifier only (don't toggle CapsLock state)
;SetCapsLockState, AlwaysOff

; Define remappings under CapsLock as a modifier
CapsLock & u::SendInput 7
CapsLock & i::SendInput 8
CapsLock & o::SendInput 9
CapsLock & j::SendInput 4
CapsLock & k::SendInput 5
CapsLock & l::SendInput 6
CapsLock & m::SendInput 1
CapsLock & ,::SendInput 2
CapsLock & .::SendInput 3
CapsLock & Space::SendInput 0
