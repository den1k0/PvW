scoreboard players set @s timer 12000
scoreboard players set @s timer2 -160
scoreboard players set @s temp3 0
scoreboard players set @s Win 30
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteamffa
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add lockteamsffa
tag @s add gamemodeffa
tag @s add mappreview
execute as @s[tag=mp1as] run bossbar set minecraft:mp1firstplace max 30
execute as @s[tag=mp1as] run bossbar set minecraft:mp1timer max 600
tag @s remove loadgamemodeffa