<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 4/25/2017

DESCRIPTION:
Resolves PC issues with reporting to WSUS when PC was created from a template or incorrectly sysprep'd. Cuase of the issue is duplicate SID information from machine in WSUS

USAGE:
.\Fix-LocalWSUS.ps1

REQUIREMENTS:
N/A
#>

net stop wuauserv 
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v AccountDomainSid /f 
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v PingID /f 
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /f 
net start wuauserv 
wuauclt /resetauthorization /detectnow