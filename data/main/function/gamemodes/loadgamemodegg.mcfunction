scoreboard players set @s timer 12000
scoreboard players set @s timer2 -160
scoreboard players set @s temp3 0
scoreboard players set @s Win 25
scoreboard players set @s count 0
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteamffa
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ggloadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add lockteamsffa
tag @s add gamemodegg
tag @s add mappreview
execute as @s[tag=mp10as] run bossbar set minecraft:mp10firstplace max 25
execute as @s[tag=mp10as] run bossbar set minecraft:mp10timer max 600
tag @s remove loadgamemodegg

data modify entity @s DeathTime set value 11
item replace entity @s weapon.mainhand with minecraft:stone
execute at @s run setblock ~ ~-2 ~ chest
execute at @s run setblock ~ ~-3 ~ chest
execute as @s at @s run function main:gamemodes/setggchest
execute as @s at @s run function main:gamemodes/gungamechest with entity @s