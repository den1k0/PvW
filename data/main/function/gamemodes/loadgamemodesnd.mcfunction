scoreboard players set @s timer 3000
scoreboard players set @s timer2 -160
scoreboard players set @s Piglins 0
scoreboard players set @s Withers 0
scoreboard players set @s Win 6
scoreboard players set @s temp3 0
scoreboard players set @s bool2 0
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add mappreview
tag @s add lockteams
tag @s add gamemodesnd
execute as @s[tag=mp4as] run bossbar set minecraft:mp4piglins max 6
execute as @s[tag=mp4as] run bossbar set minecraft:mp4withers max 6
execute as @s[tag=mp4as] run bossbar set minecraft:mp4timer max 150
execute as @s[tag=mp4as] run bossbar set minecraft:mp4bomb max 1000
tag @s remove loadgamemodesnd