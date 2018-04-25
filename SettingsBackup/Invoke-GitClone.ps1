<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 3/29/2018

DESCRIPTION:
Clones Git Repo from specified location

USAGE:
.\Invoke-GitClone.ps1 -GitRepo 'Repository1' -GitRepoName 'GITHUB'

REQUIREMENTS:

#>

param (
    [Parameter(Mandatory = $true)]$GitRepo,
    [Parameter(Mandatory = $true)]$GitRepoName
)

Import-Module Posh-Git

$UserName = $env:UserName

# Create Directory
New-Item -ItemType Directory -Force -Path "C:\Users\$UserName\Code\_ClonedGitRepositories\"

# Clone
git clone $GitRepo C:\Users\$UserName\Code\_ClonedGitRepositories\$GitRepoName