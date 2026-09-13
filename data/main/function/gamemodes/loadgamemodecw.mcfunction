scoreboard players set @s timer 4800
scoreboard players set @s timer2 -160
scoreboard players set @s Piglins 0
scoreboard players set @s Withers 0
scoreboard players set @s temp3 200
scoreboard players set @s bool2 1
scoreboard players set @s wtemp 300
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
tag @s add gaming
tag @s add lockteams
tag @s add gamemodecw
tag @s add hqzone
tag @s add mappreview
tag @s add startzone
execute as @s[tag=mp5as] run bossbar set minecraft:mp5piglins max 12
execute as @s[tag=mp5as] run bossbar set minecraft:mp5withers max 12
execute as @s[tag=mp5as] run bossbar set minecraft:mp5timer max 240
execute as @s[tag=mp5as] run bossbar set minecraft:mp5zone max 400
execute as @s[tag=mp5as] run bossbar set minecraft:mp5zone visible true
tag @s remove loadgamemodecw