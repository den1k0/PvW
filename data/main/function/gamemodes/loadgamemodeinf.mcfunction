scoreboard players set @s timer 200
scoreboard players set @s timer2 -160
execute at @s positioned ~ ~ ~-10000 run team join piglin @a[distance=..100]
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add lockteamsffa
tag @s add gamemodeinf
tag @s add infectedwait
tag @s add mappreview
execute as @s[tag=mp6as] run bossbar set minecraft:mp6timer max 300
tag @s remove loadgamemodeinf