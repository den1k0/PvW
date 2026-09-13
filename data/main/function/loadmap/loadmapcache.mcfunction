scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template cache1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template cache2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template cache3

execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~ run place template cache4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~48 run place template cache5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~96 run place template cache6
execute if score @s loadmaptimer matches 7 at @s positioned ~48 ~10 ~144 run place template cache7

execute if score @s loadmaptimer matches 8 at @s positioned ~96 ~10 ~ run place template cache8
execute if score @s loadmaptimer matches 9 at @s positioned ~96 ~10 ~48 run place template cache9
execute if score @s loadmaptimer matches 10 at @s positioned ~96 ~10 ~96 run place template cache10
execute if score @s loadmaptimer matches 11 at @s positioned ~96 ~10 ~144 run place template cache11

execute if score @s loadmaptimer matches 12 at @s positioned ~144 ~10 ~48 run place template cache12
execute if score @s loadmaptimer matches 13 at @s positioned ~144 ~10 ~96 run place template cache13

execute if score @s loadmaptimer matches 13 at @s run fillbiome ~ ~10 ~ ~144 ~60 ~144 jungle
execute if score @s loadmaptimer matches 13.. run tag @s remove loadmapcache
execute if score @s loadmaptimer matches 13.. run scoreboard players set @s loadmaptimer 0