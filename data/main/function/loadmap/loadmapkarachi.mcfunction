scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template karachi1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template karachi2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template karachi3
execute if score @s loadmaptimer matches 4 at @s positioned ~ ~10 ~144 run place template karachi4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~ run place template karachi5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~48 run place template karachi6
execute if score @s loadmaptimer matches 7 at @s positioned ~48 ~10 ~96 run place template karachi7
execute if score @s loadmaptimer matches 8 at @s positioned ~48 ~10 ~144 run place template karachi8
execute if score @s loadmaptimer matches 9 at @s positioned ~96 ~10 ~ run place template karachi9
execute if score @s loadmaptimer matches 10 at @s positioned ~96 ~10 ~48 run place template karachi10
execute if score @s loadmaptimer matches 11 at @s positioned ~96 ~10 ~96 run place template karachi11
execute if score @s loadmaptimer matches 12 at @s positioned ~96 ~10 ~144 run place template karachi12

execute if score @s loadmaptimer matches 12 at @s run fillbiome ~ ~10 ~ ~144 ~60 ~144 basalt_deltas
execute if score @s loadmaptimer matches 12.. run tag @s remove loadmapkarachi
execute if score @s loadmaptimer matches 12.. run scoreboard players set @s loadmaptimer 0