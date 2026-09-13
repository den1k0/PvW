scoreboard players add @s loadmaptimer 1

execute if score @s loadmaptimer matches 1 at @s positioned ~ ~10 ~ run place template void
execute if score @s loadmaptimer matches 2 at @s positioned ~ ~10 ~48 run place template void
execute if score @s loadmaptimer matches 3 at @s positioned ~ ~10 ~96 run place template void
execute if score @s loadmaptimer matches 4 at @s positioned ~ ~10 ~144 run place template void

execute if score @s loadmaptimer matches 5 at @s positioned ~48 ~10 ~ run place template void
execute if score @s loadmaptimer matches 6 at @s positioned ~48 ~10 ~48 run place template void
execute if score @s loadmaptimer matches 7 at @s positioned ~48 ~10 ~96 run place template void
execute if score @s loadmaptimer matches 8 at @s positioned ~48 ~10 ~144 run place template void

execute if score @s loadmaptimer matches 9 at @s positioned ~96 ~10 ~ run place template void
execute if score @s loadmaptimer matches 10 at @s positioned ~96 ~10 ~48 run place template void
execute if score @s loadmaptimer matches 11 at @s positioned ~96 ~10 ~96 run place template void
execute if score @s loadmaptimer matches 12 at @s positioned ~96 ~10 ~144 run place template void

execute if score @s loadmaptimer matches 13 at @s positioned ~144 ~10 ~ run place template void
execute if score @s loadmaptimer matches 14 at @s positioned ~144 ~10 ~48 run place template void
execute if score @s loadmaptimer matches 15 at @s positioned ~144 ~10 ~96 run place template void
execute if score @s loadmaptimer matches 16 at @s positioned ~144 ~10 ~144 run place template void

execute if score @s loadmaptimer matches 1 at @s run kill @e[distance=1..1000,type=!player]
execute if score @s loadmaptimer matches 16 at @s run fill ~ ~10 ~ ~96 ~-63 ~96 air replace water
execute if score @s loadmaptimer matches 16 at @s run fill ~ ~10 ~ ~96 ~-63 ~96 air replace lava
execute if score @s loadmaptimer matches 16 at @s run kill @e[distance=1..1000,type=!player]
execute if score @s loadmaptimer matches 16 run fillbiome ~144 ~10 ~ ~192 ~64 ~192 the_void
execute if score @s loadmaptimer matches 17 run fillbiome ~96 ~10 ~ ~144 ~64 ~192 the_void
execute if score @s loadmaptimer matches 18 run fillbiome ~48 ~10 ~ ~96 ~64 ~192 the_void
execute if score @s loadmaptimer matches 19 run fillbiome ~ ~10 ~ ~48 ~64 ~192 the_void
execute if score @s loadmaptimer matches 1 run scoreboard players reset @s random
execute if score @s loadmaptimer matches 16.. run function main:mplobby/forceloadremove
execute if score @s loadmaptimer matches 19.. run tag @s remove clearmap
execute if score @s loadmaptimer matches 19.. run scoreboard players set @s loadmaptimer 0