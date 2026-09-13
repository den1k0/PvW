scoreboard players set @s timer 12000
scoreboard players set @s timer2 -160
scoreboard players set @s Piglins 0
scoreboard players set @s Withers 0
scoreboard players set @s Win 50
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add gamemodetdm
tag @s add mappreview
execute as @s[tag=mp3as] run bossbar set minecraft:mp3piglins max 50
execute as @s[tag=mp3as] run bossbar set minecraft:mp3withers max 50
execute as @s[tag=mp3as] run bossbar set minecraft:mp3timer max 600
tag @s remove loadgamemodetdm