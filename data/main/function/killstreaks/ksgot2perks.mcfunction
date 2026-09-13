execute at @s run playsound minecraft:music_disc.warsoundtwo master @s ~ ~ ~ 0.5 1 0.5
tag @s add got2perks
execute at @s run playsound minecraft:music_disc.orspecialistbonus voice @s ~ ~ ~ 0.5 1 0.5
title @s actionbar {"text":"You got ALL 2ND TIER PERKS!","color":"gold"}
tellraw @s [{"text":"You got ","color":"white"},{"text":"ALL 2ND TIER PERKS","color":"dark_red"}]
scoreboard players set @s actionbarwait 20
scoreboard players set @s temp2 7