scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template vokzal1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template vokzal2
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template vokzal3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~ run place template vokzal4
execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~48 run place template vokzal5
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~96 run place template vokzal6
execute if score @s loadmaptimer matches 7 at @s positioned ~96 ~10 ~ run place template vokzal7
execute if score @s loadmaptimer matches 8 at @s positioned ~96 ~10 ~48 run place template vokzal8

execute if score @s loadmaptimer matches 8 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 snowy_taiga
execute if score @s loadmaptimer matches 8.. run tag @s remove loadmapvokzal
execute if score @s loadmaptimer matches 8.. run scoreboard players set @s loadmaptimer 0