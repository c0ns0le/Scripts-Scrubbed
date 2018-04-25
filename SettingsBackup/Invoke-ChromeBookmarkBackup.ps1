<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Backs up Chrome Bookmarks and Favicons

USAGE:
.\Invoke-ChromeBookmarkBackup.ps1 -BackupDir 'Directory'

REQUIREMENTS:
N/A
#>


param (
    [Parameter(Mandatory = $true)]$BackupDir
)

$UserName = $env:UserName

# Get File Paths
$SourceBMFile = 'C:\users\' + $UserName + '\AppData\Local\Google\Chrome\User Data\Default\Bookmarks'
$SourceFavFile = 'C:\users\' + $UserName + '\AppData\Local\Google\Chrome\User Data\Default\Favicons'

# Create Chrome Directory
New-Item -ItemType Directory $BackupDir\Chrome\

# Copy Files to Backup Directory
Copy-Item -Path $SourceBMFile -Destination $BackupDir\Chrome\
Copy-Item -Path $SourceFavFile -Destination $BackupDir\Chrome\