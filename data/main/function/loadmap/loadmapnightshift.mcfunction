scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template nightshift1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template nightshift2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template nightshift3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~ run place template nightshift4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~48 run place template nightshift5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~96 run place template nightshift6
execute if score @s loadmaptimer matches 7 at @s positioned ~96 ~10 ~ run place template nightshift7
execute if score @s loadmaptimer matches 8 at @s positioned ~96 ~10 ~48 run place template nightshift8
execute if score @s loadmaptimer matches 9 at @s positioned ~96 ~10 ~96 run place template nightshift9

execute if score @s loadmaptimer matches 9 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 ocean
execute if score @s loadmaptimer matches 9.. run tag @s remove loadmapnightshift
execute if score @s loadmaptimer matches 9.. run scoreboard players set @s loadmaptimer 0