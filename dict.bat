@echo off
setlocal
if "%~1"=="" (
    echo Usage: %0 word
    exit /b 1
)
set "WORD=%~1"
curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/%WORD%" > temp_response.json

echo Definitions found:
powershell -NoProfile -Command ^
  "$index = 1; (Get-Content temp_response.json) -join ' ' |" ^
  "Select-String -Pattern '\"definition\":\"(.*?)\"' -AllMatches |" ^
  "ForEach-Object { $_.Matches } |" ^
  "ForEach-Object { Write-Output \"$index. $($_.Groups[1].Value)\"; $index++ }"

del temp_response.json
pause
