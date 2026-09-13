scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template rocket1
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template rocket2
execute if score @s loadmaptimer matches 3 at @s positioned ~48 ~10 ~ run place template rocket3
execute if score @s loadmaptimer matches 4 at @s positioned ~48 ~10 ~48 run place template rocket4

execute if score @s loadmaptimer matches 4 at @s run fillbiome ~ ~10 ~ ~144 ~60 ~144 jungle
execute if score @s loadmaptimer matches 4.. run tag @s remove loadmaprocket
execute if score @s loadmaptimer matches 4.. run scoreboard players set @s loadmaptimer 0