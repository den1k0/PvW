scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template cachemini1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template cachemini2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template cachemini3

execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template cachemini4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~96 run place template cachemini5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~144 run place template cachemini6

execute if score @s loadmaptimer matches 7 at @s positioned ~96 ~10 ~48 run place template cachemini7
execute if score @s loadmaptimer matches 8 at @s positioned ~96 ~10 ~96 run place template cachemini8
execute if score @s loadmaptimer matches 9 at @s positioned ~96 ~10 ~144 run place template cachemini9

execute if score @s loadmaptimer matches 10 at @s positioned ~144 ~10 ~96 run place template cachemini10

execute if score @s loadmaptimer matches 10 at @s run fillbiome ~ ~10 ~ ~144 ~60 ~144 jungle
execute if score @s loadmaptimer matches 10.. run tag @s remove loadmapcachemini
execute if score @s loadmaptimer matches 10.. run scoreboard players set @s loadmaptimer 0