<#
AUTHOR:
Jarrod Rother

CHANGELOG:
Created - 8/1/2017
Modified - 2/1/2018

DESCRIPTION:
Downloads all current Episodes of Critical Role

USAGE:
.\Get-CriticalRolePodcast.ps1 -OutPath 'Path to save files'

REQUIREMENTS:
N/A
#>

param (
    [Parameter(Mandatory = $true)]$OutPath
)

# Create Directory Structure
mkdir $OutPath\Campaign01
mkdir $OutPath\Campaign01\Chapter00
mkdir $OutPath\Campaign01\Chapter01
mkdir $OutPath\Campaign01\Chapter02
mkdir $OutPath\Campaign01\Chapter03
mkdir $OutPath\Campaign01\Chapter04
mkdir $OutPath\Campaign01\Chapter05
mkdir $OutPath\Campaign01\Chapter06
mkdir $OutPath\Campaign01\Chapter07
mkdir $OutPath\Campaign01\Chapter08
mkdir $OutPath\Campaign02
mkdir $OutPath\Campaign02\Chapter01


# Campaign 1
## Chapter 00
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/mck2y3/000_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter00\C01E000 - The Backstory.mp3"

## Chapter 01
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/dq7uvp/001_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E001 - Arrival at Kraghammer.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/2qd5xt/002_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E002 - Into the Greyspine Mines.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/39md2s/003_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E003 - Strange Bedfellows.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/nzwbbe/004_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E004 - Attack on the Duergar Warcamp.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/9nsi6s/005_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E005 - The Trick about Falling.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/idz5ip/006_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E006 - Breaching the Emberhold.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/tbvdcf/007_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E007 - The Throne Room.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/5q3pup/008_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E008 - Glass and Bone.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/346ww5/009_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E009 - Yug'Voril Uncovered.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/jjw78i/010_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E010 - K'Varn Revealed.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/pm694k/011_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E011 - The Temple Showdown.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ggtjga/012_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E012 - Dungeons & Dragons Campaign Tips.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/2zy35x/013_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E013 - Escape from the Underdark.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/j6hkih/014_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E014 - Shopping and Shipping.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ki3cib/015_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E015 - Skyward.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/d9hckf/016_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter01\C01E016 - Enter Vasselheim.mp3"

## Chapter 02
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/gkiqyg/017_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E017 - Hubris.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/9jm99m/018_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E018 - Trial of the Take Part 1.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/szh55x/019_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E019 - Trial of the Take Part 2.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/5rvnwa/020_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E020 - Trial of the Take Part 3.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/j3am8u/021_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E021 - Trial of the Take Part 4.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/8z9rxf/022_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E022 - Aramente to Pyrah.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/znctre/023_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter02\C01E023 - The Rematch.mp3"

## Chapter 03
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/3s7nvb/024_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E024 - The Feast.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/eg6kmw/025_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E025 - Crimson Diplomacy.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/mua57m/026_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E026 - Consequences and Cows.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/4vextk/027_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E027 - The Path to Whitestone.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/r7jwnk/028_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E028 - The Sun Tree.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/nqb4yd/029_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E029 - Whispers.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/v53xzm/030_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E030 - Stoke the Flames.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/kcspwt/031_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E031 - Gunpowder Plot.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ksevh2/032_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E032 - Against the Tide of Bone.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/7kasid/033_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E033 - Reunions.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/hh2nes/034_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E034 - Race to the Ziggurat.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/zcnd78/035_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E035 - Denouement.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/gmffx9/036_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E036 - Winter's Crest in Whitestone.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/b4uz4f/037_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E037 - A Musician's Nostalgia.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/yuq6m2/038_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter03\C01E038 - Echoes of the Past.mp3"

## Chapter 04
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/veez5x/039_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E039 - Omens.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ggwbr8/040_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E040 - Desperate Measures.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/tycfvi/041_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E041 - In Ruins.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/egd78k/042_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E042 - Dangerous Dealings.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/5ig8uf/043_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E043 - Return to Vasselheim.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/p9iv4z/044_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E044 - The Sunken Tomb.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/gargtb/045_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E045 - Those Who Walk Away.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/65i73k/046_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E046 - Cindergrove Revisited.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/afzun7/047_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E047 - The Family Business.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/jjqs8z/048_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E048 - Into the Frostweald.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/uqt2jb/049_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E049 - A Name Is Earned.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ya6fnn/050_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E050 - Best Laid Plans.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/zphig8/051_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E051 - Test of Pride.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/95eidm/052_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E052 - The Kill Box.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/2fgn9e/053_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E053 - At Dawn, We Plan.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/kswaae/054_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E054 - In the Belly of the Beast.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/vkrika/055_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E055 - Umbrasyl.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/7cr39e/056_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter04\C01E056 - Hope.mp3"

## Chapter 05
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/si63gp/057_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E057 - Duskmeadow.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/hrteri/058_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E058 - A Cycle of Vengeance.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/szkny8/059_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E059 - Into the Feywild.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/i7fmue/060_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E060 - Heredity and Hats.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/2jx7fn/061_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E061 - Denizens of the Moonbrush.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/cvb66y/062_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E062 - Uninviting Waters.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/d75jkf/063_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E063 - The Echo Tree.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/fdjerx/064_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E064 - The Frigid Doom.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/twa9ig/065_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E065 - The Streets of Ank'Harel.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/w3zzyj/066_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E066 - A Traveler's Gamble.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/n2krsz/067_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E067 - The Chase to Glintshore.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/v5bphr/068_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E068 - Cloak and Dagger.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/9x7a8h/069_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter05\C01E069 - Passed Through Fire.mp3"

## Chapter 06
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/9jf27c/070_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E070 - Trust.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/xfjz6v/071_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E071 - Vorugal.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/7gj55m/072_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E072 - The Elephant in the Room.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/qfsmbs/073_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E073 - The Coming Storm.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/4kyx55/074_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E074 - Path of Brass.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/8t8542/075_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E075 - Where the Cards Fall.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/juck95/076_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E076 - Brawl in the Arches.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/7td4mm/077_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E077 - Clash at Daxio.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/2kcmfc/078_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E078 - The Siege of Emon.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/6pbsfd/079_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E079 - Thordak.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/f6zfjw/080_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E080 - Raishan.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/jhy8wr/081_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E081 - What Lies Beneath the Surface.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/34dqpx/082_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E082 - Deadly Echoes.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/69du3d/083_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E083 - The Deceiver's Stand.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/kvcjx3/084_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter06\C01E084 - Loose Ends.mp3"

## Chapter 07
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ut5vq6/085_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E085 - A Bard's Lament.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/zygn9w/086_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E086 - Daring Days.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/t68euv/087_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E087 - Onward to Vesrah.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/vte6v3/088_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E088 - Tangled Depths.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/7czt7u/089_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E089 - Curious Tides.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/an2ybn/090_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E090 - Voice of the Tempest.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/yphex8/091_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E091 - Vox Machina Go to Hell.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/w5jf9b/092_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E092 - Deals in the Dark.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/z9k6fx/093_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E093 - Bats out of Hell.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/25x55i/094_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E094 - Jugs and Rods.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/a5ptkp/095_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E095 - One Year Later.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/nrt9qs/096_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E096 - Family Matters.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/dmydpf/097_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E097 - Taryon, My Wayward Son.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/257jhn/098_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E098 - The Mines of the Many.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/udpr55/099_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter07\C01E099 - Masquerade.mp3"

## Chapter 08
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/meuxnj/100_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E100 - Unfinished Business.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/yhapr6/101_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E101 - Thar Amphala.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/mqn3mi/102_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E102 - Race to the Tower.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ktrfs6/103_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E103 - The Fate-Touched.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/i3ix6g/104_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E104 - Elysium.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/zxqaq3/105_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E105 - The Fear of Isolation.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/wenz8a/106_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E106 - The Endless Atheneeum.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/sak8ey/107_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E107 - Scaldseat.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/m9aq9z/108_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E108 - The Core Anvil.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/n4hscf/109_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E109 - The Ominous March.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/88cuqp/110_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E110 - The Climb Within.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/37mrem/111_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E111 - Shadows of Thomara.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/watve5/112_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E112 - Dark Dealings.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/44vrxh/113_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E113 - The Final Ascent.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/ae2jby/114_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E114 - Vecna, the Ascended.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/5euu3z/115_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign01\Chapter08\C01E115 - The Chapter Closes.mp3"

# Campaign 2
## Chapter 01
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/6tvk99/2001_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign02\Chapter01\C01E001 - Curious Beginnings.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/upiptg/2002_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign02\Chapter01\C01E002 - A Show of Scrutiny.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/4xji55/2003_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign02\Chapter01\C01E003 - The Midnight Chase.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/h9k8ak/2004_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign02\Chapter01\C01E004 - Disparate Pieces.mp3"
Invoke-WebRequest -Uri https://criticalrole.podbean.com/mf/download/fuby37/2005_CR_podcast_44_128.mp3 -OutFile "$OutPath\Campaign02\Chapter01\C01E005 - The Open Road.mp3