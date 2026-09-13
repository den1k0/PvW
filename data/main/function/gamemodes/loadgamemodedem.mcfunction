scoreboard players set @s timer 4800
scoreboard players set @s timer2 -160
scoreboard players set @s Piglins 0
scoreboard players set @s Withers 0
scoreboard players set @s Win 2
scoreboard players set @s temp3 0
scoreboard players set @s bool2 1
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add mappreview
tag @s add lockteams
tag @s add gamemodedem
execute as @s[tag=mp9as] run bossbar set minecraft:mp9piglins max 2
execute as @s[tag=mp9as] run bossbar set minecraft:mp9withers max 2
execute as @s[tag=mp9as] run bossbar set minecraft:mp9timer max 240
execute as @s[tag=mp9as] run bossbar set minecraft:mp9bomb max 600
tag @s remove loadgamemodedem