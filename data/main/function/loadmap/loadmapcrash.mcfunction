scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template crash1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template crash2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template crash3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~ run place template crash4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~48 run place template crash5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~96 run place template crash6

execute if score @s loadmaptimer matches 6 at @s run setblock ~58 ~21 ~65 minecraft:ladder
execute if score @s loadmaptimer matches 6 at @s run setblock ~58 ~22 ~65 minecraft:ladder

execute if score @s loadmaptimer matches 6 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 soul_sand_valley
execute if score @s loadmaptimer matches 6.. run tag @s remove loadmapcrash
execute if score @s loadmaptimer matches 6.. run scoreboard players set @s loadmaptimer 0