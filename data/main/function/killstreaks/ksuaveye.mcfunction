execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.4 0.3 0 200 normal
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 1 0.7 0
execute at @s run particle minecraft:poof ~ ~1.5 ~ 0.3 0.4 0.3 0 20 normal
title @s actionbar {"text":"You got UAV Ender Eye!","color":"gold"}
scoreboard players set @s actionbarwait 20
scoreboard players set @s temp2 3
tag @s add uavendereye
execute as @s run function main:killstreaks/uaveyeinit