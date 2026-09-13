execute as @s[scores={planting=1},gamemode=!spectator] at @s run playsound minecraft:music_disc.iiradarfour master @a ~ ~ ~ 0.5 1.2 0
title @s[scores={planting=1..19}] actionbar {"text":"PLANTING","bold":true,"color":"gold"}
title @s[scores={planting=20..39}] actionbar {"text":"PLANTING.","bold":true,"color":"gold"}
title @s[scores={planting=40..59}] actionbar {"text":"PLANTING..","bold":true,"color":"gold"}
title @s[scores={planting=60..79}] actionbar {"text":"PLANTING...","bold":true,"color":"gold"}
execute as @s[scores={planting=1..}] run scoreboard players set @s actionbarwait 20
execute as @s[scores={planting=80..}] at @s run summon minecraft:block_display ~-0.375 ~ ~-0.375 {Tags:["bomb"],Glowing:1b,block_state:{Name:"minecraft:tnt"}}
execute as @s[scores={planting=80..}] at @s as @e[tag=bomb] run data modify entity @s transformation.scale set value [0.75f,0.75f,0.75f]
execute as @s[scores={planting=80..}] at @s if entity @e[tag=gamemodesnd,distance=..1000] run clear @a[distance=..1000] minecraft:tnt
execute as @s[scores={planting=80..}] at @s if entity @e[tag=gamemodesnd,distance=..1000] run scoreboard players set @n[tag=bomb] timer 1000
execute as @s[scores={planting=80..}] at @s if entity @e[tag=gamemodedem,distance=..1000] run scoreboard players set @n[tag=bomb] timer 600
execute as @s[scores={planting=80..}] at @s run kill @e[tag=sndbd,distance=..1000]
execute as @s[scores={planting=80..}] at @s at @e[tag=bomb,distance=..1000] run playsound minecraft:music_disc.iiradarfour master @a ~ ~ ~ 2 0.7 0
execute as @s[scores={planting=80..}] at @s run playsound minecraft:music_disc.tdmabbombplanted voice @a[team=piglin] ~ ~ ~ 0.8 1 0.8
execute as @s[scores={planting=80..}] at @s run playsound minecraft:music_disc.tdmmilbombplanted voice @a[team=wither] ~ ~ ~ 0.8 1 0.8
execute as @s[scores={planting=80..}] at @s run title @a[distance=..1000] actionbar {"text":"BOMB PLANTED","bold":true,"color":"red"}
execute as @s[scores={planting=80..}] at @s run scoreboard players set @a[distance=..1000] actionbarwait 60
execute as @s[scores={planting=80..}] run tag @s add bombplanter
execute as @s[scores={planting=80..}] at @s if entity @e[tag=mp4as,distance=..1000] run bossbar set mp4bomb visible true
execute as @s[scores={planting=80..}] at @s if entity @e[tag=mp9as,distance=..1000] run bossbar set mp9bomb visible true
execute as @s[scores={planting=80..}] at @s if entity @e[tag=gamemodedem,distance=..1000] run scoreboard players reset @a[distance=..1000] planting
execute as @s[scores={planting=80..}] run scoreboard players reset @s planting
team join piglin @e[tag=bomb]