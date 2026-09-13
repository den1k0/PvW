scoreboard players set @s timer 12000
scoreboard players set @s timer2 -160
scoreboard players set @s Piglins 0
scoreboard players set @s Withers 0
scoreboard players set @s Win 250
scoreboard players set @s temp3 200
scoreboard players set @s count 0
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add gamemodehq
tag @s add hqzone
tag @s add mappreview
execute as @s[tag=mp2as] run bossbar set minecraft:mp2piglins max 250
execute as @s[tag=mp2as] run bossbar set minecraft:mp2withers max 250
execute as @s[tag=mp2as] run bossbar set minecraft:mp2timer max 600
execute as @s[tag=mp2as] run bossbar set minecraft:mp2zone max 400
execute as @s[tag=mp2as] run bossbar set minecraft:mp2zone visible true
tag @s remove loadgamemodehq