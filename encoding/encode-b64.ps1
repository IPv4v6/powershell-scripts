param(
    [Parameter(Mandatory)]
    [string]$IFile,

    [Parameter(Mandatory)]
    [string]$OFile
)

$bytes = [System.IO.File]::ReadAllBytes($IFile)
$base64String = [System.Convert]::ToBase64String($bytes)
[System.IO.File]::WriteAllText($OFile, $base64String)
