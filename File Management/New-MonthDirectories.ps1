<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 9/15/2017

DESCRIPTION:
Creates Named Monthly Directories in the Current Years Directory under the current Working Directory

USAGE:
.\New-MonthDirectories.ps1

REQUIREMENTS:
N/A
#>

$CurrentYear = (Get-Date).year

New-Item -ItemType Directory -Path $CurrentYear
New-Item -ItemType directory -Path "$CurrentYear\01 - January"
New-Item -ItemType directory -Path "$CurrentYear\02 - February"
New-Item -ItemType directory -Path "$CurrentYear\03 - March"
New-Item -ItemType directory -Path "$CurrentYear\04 - April"
New-Item -ItemType directory -Path "$CurrentYear\05 - May"
New-Item -ItemType directory -Path "$CurrentYear\06 - June"
New-Item -ItemType directory -Path "$CurrentYear\07 - July"
New-Item -ItemType directory -Path "$CurrentYear\08 - August"
New-Item -ItemType directory -Path "$CurrentYear\09 - September"
New-Item -ItemType directory -Path "$CurrentYear\10 - October"
New-Item -ItemType directory -Path "$CurrentYear\11 - November"
New-Item -ItemType directory -Path "$CurrentYear\12 - December"