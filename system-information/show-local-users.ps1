#
# Tested on Windows 10 1909 (10.0.18363)
#

Get-WmiObject -Class Win32_UserAccount -Filter "LocalAccount=True" |
Select Name, Description, SID, Disabled | Format-Table