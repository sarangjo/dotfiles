$dirs = "WindowsPowerShell","PowerShell"

foreach ($dir in $dirs) {
    mkdir -Force ~/Documents/$dir/
    cp powershell/Microsoft.PowerShell_profile.ps1 ~/Documents/$dir/
}
