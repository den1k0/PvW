execute at @s run playsound minecraft:music_disc.warsoundone master @s[] ~ ~ ~ 0.5 1 0.5
execute at @s run particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.2 40 normal
execute at @s run particle minecraft:poof ~ ~1 ~ 0.1 0.1 0.1 0.1 20 normal
tag @s add aura
title @s actionbar {"text":"You got HEROBRINE AURA!","color":"gold"}
scoreboard players set @s temp2 5