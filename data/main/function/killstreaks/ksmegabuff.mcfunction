execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0 50 normal
effect give @s minecraft:regeneration 10 2 false
effect give @s minecraft:speed 10 1 true
effect give @s minecraft:absorption 10 1 true
execute at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 1 1 0
title @s actionbar {"text":"You got MEGABUFF!","color":"gold"}
tellraw @s [{"text":"You got ","color":"white"},{"text":"MEGABUFF","color":"dark_purple"}]
scoreboard players set @s actionbarwait 20
scoreboard players set @s temp2 3