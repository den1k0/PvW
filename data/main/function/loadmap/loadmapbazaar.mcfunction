scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template bazaar1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template bazaar2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template bazaar3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template bazaar4

execute if score @s loadmaptimer matches 4 at @s run fillbiome ~ ~10 ~ ~144 ~54 ~144 crimson_forest
execute if score @s loadmaptimer matches 4.. run tag @s remove loadmapbazaar
execute if score @s loadmaptimer matches 4.. run scoreboard players set @s loadmaptimer 0