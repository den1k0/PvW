execute as @e[type=armor_stand,tag=loadmapvillage] at @s positioned ~ ~10 ~ run place template village1
execute as @e[type=armor_stand,tag=loadmapvillage] at @s positioned ~ ~10 ~48 run place template village2
execute as @e[type=armor_stand,tag=loadmapvillage] at @s positioned ~48 ~10 ~ run place template village3
execute as @e[type=armor_stand,tag=loadmapvillage] at @s positioned ~48 ~10 ~48 run place template village4
execute as @e[type=armor_stand,tag=loadmapvillage] at @s run fillbiome ~ ~10 ~ ~128 ~64 ~128 snowy_taiga
execute as @e[tag=loadmapvillage] run tag @s remove loadmapvillage