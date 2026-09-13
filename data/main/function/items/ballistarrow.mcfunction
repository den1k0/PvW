execute store result score @s ballistaarrowdmg run data get entity @s damage 1085
execute store result entity @s damage double 0.001 run scoreboard players get @s ballistaarrowdmg
data modify entity @s NoGravity set value 1b
execute at @s[tag=!inground] run particle minecraft:small_gust ~ ~0.25 ~ 0.2 0.2 0.2 0 1 normal