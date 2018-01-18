<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 12/18/2017

DESCRIPTION:
Creates Files with dates going back over the course of the test year selected

USAGE:
.\Create-TestFiles.ps1 -TestPath '<Path>' -TestYear '<Year>'

REQUIREMENTS:
N/A
#>

param (
    [Parameter(Mandatory = $true)]$TestPath,
    [Parameter(Mandatory = $true)]$TestYear
)

# Gets Number of Days for all Months in $TestYear and saves them as their own variables
$TestJanuary = [DateTime]::DaysInMonth($TestYear, 1)
$TestFebruary = [DateTime]::DaysInMonth($TestYear, 2)
$TestMarch = [DateTime]::DaysInMonth($TestYear, 3)
$TestApril = [DateTime]::DaysInMonth($TestYear, 4)
$TestMay = [DateTime]::DaysInMonth($TestYear, 5)
$TestJune = [DateTime]::DaysInMonth($TestYear, 6)
$TestJuly = [DateTime]::DaysInMonth($TestYear, 7)
$TestAugust = [DateTime]::DaysInMonth($TestYear, 8)
$TestSeptember = [DateTime]::DaysInMonth($TestYear, 9)
$TestOctober = [DateTime]::DaysInMonth($TestYear, 10)
$TestNovember = [DateTime]::DaysInMonth($TestYear, 11)
$TestDecember = [DateTime]::DaysInMonth($TestYear, 12)

# Creates Month Folders at $TestPath
New-item -ItemType Directory -Name "01-January" -Path $TestPath
New-item -ItemType Directory -Name "02-February" -Path $TestPath
New-item -ItemType Directory -Name "03-March" -Path $TestPath
New-item -ItemType Directory -Name "04-April" -Path $TestPath
New-item -ItemType Directory -Name "05-May" -Path $TestPath
New-item -ItemType Directory -Name "06-June" -Path $TestPath
New-item -ItemType Directory -Name "07-July" -Path $TestPath
New-item -ItemType Directory -Name "08-August" -Path $TestPath
New-item -ItemType Directory -Name "09-September" -Path $TestPath
New-item -ItemType Directory -Name "10-October" -Path $TestPath
New-item -ItemType Directory -Name "11-November" -Path $TestPath
New-item -ItemType Directory -Name "12-December" -Path $TestPath


# Expands Count of Days Variable to an array and sets it to two decimal places, then creates files and sets creation/modification dates for each dat of the month for each month
#January
$JanuaryTestDays = @()
1..$TestJanuary | ForEach-Object { $JanuaryTestDays += $_.ToString("00") }

foreach ($JanuaryDay in $JanuaryTestDays) {
    New-item -ItemType File -Path "$TestPath\01-January\" -Name "$JanuaryDay.txt"
    (Get-ChildItem "$TestPath\01-January\$JanuaryDay.txt").CreationTime = "01/$JanuaryDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\01-January\$JanuaryDay.txt").LastWriteTime = "01/$JanuaryDay/$TestYear 12:30AM"
}

#February
$FebruaryTestDays = @()
1..$TestFebruary | ForEach-Object { $FebruaryTestDays += $_.ToString("00") }

foreach ($FebruaryDay in $FebruaryTestDays) {
    New-item -ItemType File -Path "$TestPath\02-February\" -Name "$FebruaryDay.txt"
    (Get-ChildItem "$TestPath\02-February\$FebruaryDay.txt").CreationTime = "02/$FebruaryDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\02-February\$FebruaryDay.txt").LastWriteTime = "02/$FebruaryDay/$TestYear 12:30AM"
}

#March
$MarchTestDays = @()
1..$TestMarch | ForEach-Object { $MarchTestDays += $_.ToString("00") }

foreach ($MarchDay in $MarchTestDays) {
    New-item -ItemType File -Path "$TestPath\03-March\" -Name "$MarchDay.txt"
    (Get-ChildItem "$TestPath\03-March\$MarchDay.txt").CreationTime = "03/$MarchDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\03-March\$MarchDay.txt").LastWriteTime = "03/$MarchDay/$TestYear 12:30AM"
}

#April
$AprilTestDays = @()
1..$TestApril | ForEach-Object { $AprilTestDays += $_.ToString("00") }

foreach ($AprilDay in $AprilTestDays) {
    New-item -ItemType File -Path "$TestPath\04-April\" -Name "$AprilDay.txt"
    (Get-ChildItem "$TestPath\04-April\$AprilDay.txt").CreationTime = "04/$AprilDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\04-April\$AprilDay.txt").LastWriteTime = "04/$AprilDay/$TestYear 12:30AM"
}

#May
$MayTestDays = @()
1..$TestMay | ForEach-Object { $MayTestDays += $_.ToString("00") }

foreach ($MayDay in $MayTestDays) {
    New-item -ItemType File -Path "$TestPath\05-May\" -Name "$MayDay.txt"
    (Get-ChildItem "$TestPath\05-May\$MayDay.txt").CreationTime = "05/$MayDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\05-May\$MayDay.txt").LastWriteTime = "05/$MayDay/$TestYear 12:30AM"
}

#June
$JuneTestDays = @()
1..$TestJune | ForEach-Object { $JuneTestDays += $_.ToString("00") }

foreach ($JuneDay in $JuneTestDays) {
    New-item -ItemType File -Path "$TestPath\06-June\" -Name "$JuneDay.txt"
    (Get-ChildItem "$TestPath\06-June\$JuneDay.txt").CreationTime = "06/$JuneDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\06-June\$JuneDay.txt").LastWriteTime = "06/$JuneDay/$TestYear 12:30AM"
}

#July
$JulyTestDays = @()
1..$TestJuly | ForEach-Object { $JulyTestDays += $_.ToString("00") }

foreach ($JulyDay in $JulyTestDays) {
    New-item -ItemType File -Path "$TestPath\07-July\" -Name "$JulyDay.txt"
    (Get-ChildItem "$TestPath\07-July\$JulyDay.txt").CreationTime = "07/$JulyDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\07-July\$JulyDay.txt").LastWriteTime = "07/$JulyDay/$TestYear 12:30AM"
}

#August
$AugustTestDays = @()
1..$TestAugust | ForEach-Object { $AugustTestDays += $_.ToString("00") }

foreach ($AugustDay in $AugustTestDays) {
    New-item -ItemType File -Path "$TestPath\08-August\" -Name "$AugustDay.txt"
    (Get-ChildItem "$TestPath\08-August\$AugustDay.txt").CreationTime = "08/$AugustDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\08-August\$AugustDay.txt").LastWriteTime = "08/$AugustDay/$TestYear 12:30AM"
}

#September
$SeptemberTestDays = @()
1..$TestSeptember | ForEach-Object { $SeptemberTestDays += $_.ToString("00") }

foreach ($SeptemberDay in $SeptemberTestDays) {
    New-item -ItemType File -Path "$TestPath\09-September\" -Name "$SeptemberDay.txt"
    (Get-ChildItem "$TestPath\09-September\$SeptemberDay.txt").CreationTime = "09/$SeptemberDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\09-September\$SeptemberDay.txt").LastWriteTime = "09/$SeptemberDay/$TestYear 12:30AM"
}

#October
$OctoberTestDays = @()
1..$TestOctober | ForEach-Object { $OctoberTestDays += $_.ToString("00") }

foreach ($OctoberDay in $OctoberTestDays) {
    New-item -ItemType File -Path "$TestPath\10-October\" -Name "$OctoberDay.txt"
    (Get-ChildItem "$TestPath\10-October\$OctoberDay.txt").CreationTime = "10/$OctoberDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\10-October\$OctoberDay.txt").LastWriteTime = "10/$OctoberDay/$TestYear 12:30AM"
}

#November
$NovemberTestDays = @()
1..$TestNovember | ForEach-Object { $NovemberTestDays += $_.ToString("00") }

foreach ($NovemberDay in $NovemberTestDays) {
    New-item -ItemType File -Path "$TestPath\11-November\" -Name "$NovemberDay.txt"
    (Get-ChildItem "$TestPath\11-November\$NovemberDay.txt").CreationTime = "11/$NovemberDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\11-November\$NovemberDay.txt").LastWriteTime = "11/$NovemberDay/$TestYear 12:30AM"
}

#December
$DecemberTestDays = @()
1..$TestDecember | ForEach-Object { $DecemberTestDays += $_.ToString("00") }

foreach ($DecemberDay in $DecemberTestDays) {
    New-item -ItemType File -Path "$TestPath\12-December\" -Name "$DecemberDay.txt"
    (Get-ChildItem "$TestPath\12-December\$DecemberDay.txt").CreationTime = "12/$DecemberDay/$TestYear 12:30AM"
    (Get-ChildItem "$TestPath\12-December\$DecemberDay.txt").LastWriteTime = "12/$DecemberDay/$TestYear 12:30AM"
}