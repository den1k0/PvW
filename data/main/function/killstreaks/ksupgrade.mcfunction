execute at @s run playsound minecraft:music_disc.warsoundthree master @s ~ ~ ~ 0.3 0.85 0
title @s actionbar {"text":"You got WEAPON UPGRADE!","color":"gold"}
tag @s add restock
execute at @s run particle minecraft:poof ~ ~1 ~ 1 1 1 0 20 normal
scoreboard players set @s temp2 3