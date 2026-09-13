scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template bridge1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template bridge2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template brigde3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template brigde4

execute if score @s loadmaptimer matches 4 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 crimson_forest
execute if score @s loadmaptimer matches 4.. run tag @s remove loadmapbridge
execute if score @s loadmaptimer matches 4.. run scoreboard players set @s loadmaptimer 0