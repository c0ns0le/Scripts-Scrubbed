<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/18/2017

DESCRIPTION:
Plays message via PowerShell

USAGE:
.\Send-PowerShellTTS.ps1 -PSMessage 'Message Text here'

REQUIREMENTS:
N/A
#>

param (
    [Parameter(Mandatory = $true)]$PSMessage
)

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak($PSMessage)