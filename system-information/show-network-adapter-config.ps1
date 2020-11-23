#
# Tested on Windows 10 1909 (10.0.18363)
#

Get-WmiObject Win32_NetworkAdapterConfiguration |
Select Index, Description, MACAddress, IPAddress, DHCPEnabled | Format-Table