execute at @s run playsound minecraft:music_disc.warsoundtwo master @s ~ ~ ~ 0.5 1 0.5
tag @s add got1perks
execute at @s run playsound minecraft:music_disc.orspecialistbonus voice @s ~ ~ ~ 0.5 1 0.5
title @s actionbar {"text":"You got ALL 1ST TIER PERKS!","color":"gold"}
tellraw @s [{"text":"You got ","color":"white"},{"text":"ALL 1ST TIER PERKS","color":"aqua"}]
scoreboard players set @s actionbarwait 20
scoreboard players set @s temp2 5