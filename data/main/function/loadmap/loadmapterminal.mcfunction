scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template terminal1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template terminal2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template terminal3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template terminal4
execute if score @s loadmaptimer matches 5 at @s positioned ~96 ~10 ~ run place template terminal5
execute if score @s loadmaptimer matches 6 at @s positioned ~96 ~10 ~48 run place template terminal6
execute if score @s loadmaptimer matches 7 at @s positioned ~144 ~10 ~ run place template terminal7
execute if score @s loadmaptimer matches 8 at @s positioned ~144 ~10 ~48 run place template terminal8

execute if score @s loadmaptimer matches 8 at @s run fillbiome ~ ~10 ~ ~144 ~60 ~144 ocean
execute if score @s loadmaptimer matches 8.. run tag @s remove loadmapterminal
execute if score @s loadmaptimer matches 8.. run scoreboard players set @s loadmaptimer 0