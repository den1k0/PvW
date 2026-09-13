execute at @s run scoreboard players operation @s playerid = @p[gamemode=!spectator,scores={boneuse=1..}] playerid
execute at @s run data modify entity @s Owner set from entity @p[gamemode=!spectator,scores={boneuse=1..}] UUID
tag @s remove wolfsummoninit