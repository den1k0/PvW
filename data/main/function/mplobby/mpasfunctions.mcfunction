execute as @s[tag=mpwaiting] run function main:mplobby/mplobbywaiting
execute as @s[tag=clearmap] run function main:loadmap/clearmap
execute at @s as @a[distance=..1000,gamemode=!spectator,tag=ingame] unless score @s matchid = @n[tag=mpas] matchid run tag @s add leavegame