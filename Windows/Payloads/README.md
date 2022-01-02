### Download and direclty run a powershell script

    $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/username/script.ps1
    Invoke-Expression $($ScriptFromGithHub.Content)
