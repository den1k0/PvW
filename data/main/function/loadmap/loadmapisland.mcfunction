scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template island1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template island2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template island3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template island4

execute if score @s loadmaptimer matches 4 at @s run fillbiome ~ ~10 ~ ~144 ~54 ~144 ocean
execute if score @s loadmaptimer matches 4.. run tag @s remove loadmapisland
execute if score @s loadmaptimer matches 4.. run scoreboard players set @s loadmaptimer 0