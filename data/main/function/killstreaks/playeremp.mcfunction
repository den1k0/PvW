execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.dvdabenemyemp voice @a[team=piglinffa,distance=0.1..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.dvdmilenemyemp voice @a[team=witherffa,distance=0.1..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={ffaemp=1}] at @s run tellraw @a[distance=..1000] [{"selector":"@s","bold":true},{"text":" used ","bold":true,"color":"gray"},{"text":"EMP!","bold":true,"color":"gray"}]
execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.dvdabusingemp voice @s[team=piglinffa] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.dvdmilusingemp voice @s[team=witherffa] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={ffaemp=1}] at @s as @e[tag=creeper,distance=..1000] unless score @s playerid = @p[gamemode=!spectator] playerid run kill @s
execute as @s[scores={ffaemp=1}] at @s as @e[tag=frog,distance=..1000] unless score @s playerid = @p[gamemode=!spectator] playerid run kill @s
execute as @s[scores={ffaemp=1}] at @s as @e[tag=portableuav,distance=..1000] unless score @s playerid = @p[gamemode=!spectator] playerid run kill @s
execute as @s[scores={ffaemp=1}] at @s as @e[tag=arrowteam,distance=..1000] unless score @s playerid = @p[gamemode=!spectator] playerid run kill @s
execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.warsoundone master @a[distance=..1000] ~ ~ ~ 0.4 0.7 0.4
execute as @s[scores={ffaemp=1}] at @s run playsound minecraft:music_disc.dvdempost music @a[distance=..1000] ~ ~ ~ 0.4 1 0.4