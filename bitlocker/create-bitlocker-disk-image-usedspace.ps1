#
# Tested on Windows 10 1909 (10.0.18363)
# Tested on Windows Server 2016 (10.0.14393)
#

$VHDFILE = "C:\data\disk.vhd"
$VHDSIZE = 60MB
$VHDDRIVE = "Z"
$VHDFS = "FAT"
$PASSWORD = "12345678"
$ENCRYPTION = "Aes256"

New-VHD -Path $VHDFILE -Fixed -SizeBytes $VHDSIZE |
Mount-VHD -Passthru |
Initialize-Disk -PartitionStyle MBR -Passthru |
New-Partition -DriveLetter $VHDDRIVE -UseMaximumSize |
Format-Volume -FileSystem $VHDFS -Confirm:$false -Force
$SECSTRING = ConvertTo-SecureString $PASSWORD -AsPlainText -Force
Enable-BitLocker -MountPoint $VHDDRIVE -Password $SECSTRING -EncryptionMethod $ENCRYPTION -PasswordProtector -UsedSpaceOnly
