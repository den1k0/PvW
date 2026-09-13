scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template village1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template village2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template village3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template village4

execute if score @s loadmaptimer matches 4 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 snowy_taiga
execute if score @s loadmaptimer matches 4.. run tag @s remove loadmapvillage
execute if score @s loadmaptimer matches 4.. run scoreboard players set @s loadmaptimer 0