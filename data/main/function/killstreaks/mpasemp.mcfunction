execute as @s[tag=mpas,scores={piglinemp=1}] at @s run playsound minecraft:music_disc.dvdmilenemyemp voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run tellraw @a[distance=..1000] [{"text":"Piglins used ","bold":true,"color":"gold"},{"text":"EMP!","bold":true,"color":"gray"}]
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run playsound minecraft:music_disc.dvdabusingemp voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run kill @e[tag=creeperwither,distance=..1000]
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run kill @e[tag=frogwither,distance=..1000]
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run kill @e[tag=witherportableuav,distance=..1000]
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run kill @e[type=minecraft:arrow,tag=arrowteamwither,distance=..1000]
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run playsound minecraft:music_disc.warsoundone master @a[distance=..1000] ~ ~ ~ 0.4 0.7 0.4
execute as @s[tag=mpas,scores={piglinemp=1}] at @s run playsound minecraft:music_disc.dvdempost music @a[distance=..1000] ~ ~ ~ 0.4 1 0.4
execute as @s[tag=mpas,scores={witheremp=1}] at @s run playsound minecraft:music_disc.dvdabenemyemp voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[tag=mpas,scores={witheremp=1}] at @s run tellraw @a[distance=..1000] [{"text":"Withers used ","bold":true,"color":"aqua"},{"text":"EMP!","bold":true,"color":"gray"}]
execute as @s[tag=mpas,scores={witheremp=1}] at @s run playsound minecraft:music_disc.dvdmilusingemp voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[tag=mpas,scores={witheremp=1}] at @s run kill @e[tag=creeperpiglin,distance=..1000]
execute as @s[tag=mpas,scores={witheremp=1}] at @s run kill @e[tag=frogpiglin,distance=..1000]
execute as @s[tag=mpas,scores={witheremp=1}] at @s run kill @e[tag=piglinportableuav,distance=..1000]
execute as @s[tag=mpas,scores={witheremp=1}] at @s run kill @e[type=minecraft:arrow,tag=arrowteampiglin,distance=..1000]
execute as @s[tag=mpas,scores={witheremp=1}] at @s run playsound minecraft:music_disc.warsoundone master @a[distance=..1000] ~ ~ ~ 0.4 0.7 0.4
execute as @s[tag=mpas,scores={witheremp=1}] at @s run playsound minecraft:music_disc.dvdempost music @a[distance=..1000] ~ ~ ~ 0.4 1 0.4
execute as @s[tag=mpas,scores={piglinemp=1..}] run scoreboard players reset @s witheruav
execute as @s[tag=mpas,scores={witheremp=1..}] run scoreboard players reset @s piglinuav