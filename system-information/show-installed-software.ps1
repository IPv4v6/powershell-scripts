$ARGS = @{
Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*",
"HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
}

Get-ItemProperty @ARGS |
Select-Object DisplayName, DisplayVersion, InstallDate |
Sort-Object DisplayName | Format-Table -AutoSize