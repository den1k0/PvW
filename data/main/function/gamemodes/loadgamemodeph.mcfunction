scoreboard players set @s timer 12000
scoreboard players set @s timer2 -160
scoreboard players set @s temp3 700
execute at @s positioned ~ ~ ~-10000 run team join piglin @a[distance=..100]
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add lockhunter
tag @s add gamemodeph
tag @s add mappreview
execute as @s[tag=mp8as] run bossbar set minecraft:mp8timer max 600
tag @s remove loadgamemodeph