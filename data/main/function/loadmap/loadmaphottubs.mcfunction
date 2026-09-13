scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template hottubs1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template hottubs2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template hottubs3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template hottubs4
execute if score @s loadmaptimer matches 5 at @s positioned ~96 ~10 ~ run place template hottubs5
execute if score @s loadmaptimer matches 6 at @s positioned ~96 ~10 ~48 run place template hottubs6

execute if score @s loadmaptimer matches 6 at @s run fillbiome ~ ~10 ~ ~144 ~64 ~144 snowy_taiga
execute if score @s loadmaptimer matches 6.. run tag @s remove loadmaphottubs
execute if score @s loadmaptimer matches 6.. run scoreboard players set @s loadmaptimer 0