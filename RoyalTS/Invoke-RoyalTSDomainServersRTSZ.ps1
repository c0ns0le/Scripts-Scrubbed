<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 5/17/2018

DESCRIPTION:
Collects Servers in Current Domain and creates a new Royal Document with RDP Connections for all of them with the OU Structure

USAGE:
.\Invoke-RoyalTSDomainServersRTSZ.ps1 -DomainController '<Domain Controller>'

REQUIREMENTS:
 - RoyalTS Cmdlets
 - AD PowerShell Cmdlets
#>
param (
    [Parameter(Mandatory = $true)]$DomainController
)

$DomainCredentials = Get-Credential

Import-Module "${env:ProgramFiles(x86)}\code4ward.net\Royal TS V4\RoyalDocument.PowerShell.dll"

function CreateRoyalFolderHierarchy() {
    param(
        [string]$folderStructure,
        [string]$splitter,
        $Folder
    )
    $currentFolder = $Folder

    $folderStructure -split $splitter | ForEach-Object {
        $folder = $_
        $existingFolder = Get-RoyalObject -Folder $currentFolder -Name $folder -Type RoyalFolder
        if ($existingFolder) {
            Write-Verbose "Folder $folder already exists - using it"
            $currentFolder = $existingFolder
        }
        else {
            Write-Verbose "Folder $folder does not exist - creating it"
            $newFolder = New-RoyalObject -Folder $currentFolder -Name $folder -Type RoyalFolder
            $newFolder.CredentialFromParent = $true
            $currentFolder = $newFolder
        }
    }
    return $currentFolder
}

$DomainName = invoke-command -Computername $DomainController -Credential $DomainCredentials -Scriptblock {((get-addomain).DNSRoot).ToUpper()}
$ADServers = invoke-command -Computername $DomainController -Credential $DomainCredentials -Scriptblock {Get-ADComputer -Filter {(OperatingSystem -like "*windows*server*") -and (Enabled -eq "True")} -Properties *}
$FileName = $DomainName + '.rtsz'
$RoyalTSItems = @()

foreach ($ADServer in $ADServers) {
    $FolderFix = $ADServer.CanonicalName -replace '/[^/]*$', ''

    $Row = New-Object PSObject
    $Row | Add-Member -type NoteProperty -Name 'Folder' -Value $FolderFix
    $Row | Add-Member -type NoteProperty -Name 'Name' -Value $ADServer.Name
    $Row | Add-Member -type NoteProperty -Name 'URI' -Value $ADServer.DNSHostName
    $RoyalTSItems += $Row
}

$RoyalStore = New-RoyalStore -UserName "PowerShellUser"
$RoyalDoc = New-RoyalDocument -Store $RoyalStore -Name $DomainName -FileName $FileName

foreach ($RoyalTSItem in $RoyalTSItems) {
    $server = $RoyalTSItem
    Write-Host "Importing $($server.Name)"

    $lastFolder = CreateRoyalFolderHierarchy -folderStructure $server.Folder -Splitter  "\/" -Folder $RoyalDoc

    $newConnection = New-RoyalObject -Folder $lastFolder -Type RoyalRDSConnection -Name $server.Name
    $newConnection.URI = $server.URI
    $newConnection.CredentialFromParent = $true
    $newConnection.SmartReconnect = $true
}

Get-RoyalObject -Type RoyalFolder -Store $RoyalStore | Where-Object {$_.name -eq 'Connections'} | Remove-RoyalObject -force
Get-RoyalObject -Type RoyalFolder -Store $RoyalStore | Where-Object {$_.name -eq 'Credentials'} | Remove-RoyalObject -force
Get-RoyalObject -Type RoyalFolder -Store $RoyalStore | Where-Object {$_.name -eq 'Tasks'} | Remove-RoyalObject -force

Set-RoyalSortOrder -Criteria1 Name -SortDirection1 Ascending -Folder $RoyalDoc -Recurse 1

Out-RoyalDocument -Document $RoyalDoc -FileName $FileName