<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/4/2016
Modified - 12/18/2017

DESCRIPTION:
Collects PC Information and Creates Wiki Markup

USAGE:
.\Create-WinServerDoc.ps1

REQUIREMENTS:
 - Relies on a Template to accept the Output in MediaWiki
#>

$HostPCName = $env:computername
$DocFQDN = [System.Net.Dns]::GetHostByName("$HostPCName")
$DocIP = Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notmatch 'Loopback'} | where { $_.IPAddress -notmatch '169.*'}
$DocOS = Get-CimInstance Win32_OperatingSystem -ComputerName $HostPCName
$DocFeatures = Get-WindowsFeature -ComputerName $HostPCName | where-object {$_.Installed -eq $True}
$DocSite = nltest /server:$HostPCName /dsgetsite
$DocSite = $DocSite -replace "The command completed successfully", ""
$DocSite = $DocSite | ? {$_ -ne ""}
$DocServerInformation = Get-ADComputer $HostPCName -properties *
$DocTimeDate = invoke-command -cn $HostPCName {tzutil /g}


Add-Content -path .\$HostPCName.txt -value ('{{Server')
Add-Content -path .\$HostPCName.txt -value ('|FQDN=' + ($DocFQDN.HostName))
Add-Content -path .\$HostPCName.txt -value ('|IP=' + ($DocIP.IPAddress -join ","))
Add-Content -path .\$HostPCName.txt -value ('|OS=' + ($DocOS.Caption))
Add-Content -path .\$HostPCName.txt -value ('|Apps=' + ($DocFeatures.DisplayName -join ","))
Add-Content -path .\$HostPCName.txt -value ('|OrgResp=')
Add-Content -path .\$HostPCName.txt -value ('|TechResp=')
Add-Content -path .\$HostPCName.txt -value ('|PhysLoc=' + ($DocSite))
Add-Content -path .\$HostPCName.txt -value ('|LogLoc=' + ($DocServerInformation.Location))
Add-Content -path .\$HostPCName.txt -value ('|RegInfo=' + ($DocTimeDate.StandardName))
Add-Content -path .\$HostPCName.txt -value ('}}')