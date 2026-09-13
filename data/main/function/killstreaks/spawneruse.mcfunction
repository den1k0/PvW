execute at @s run summon minecraft:ravager ~ ~ ~ {Tags:["ravager","showhp"],DeathLootTable:"minecraft:empty"}

execute as @s[team=wither] at @s run playsound minecraft:music_disc.warmilenemytank voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[team=piglin] at @s run playsound minecraft:music_disc.warabourtank voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[team=wither] at @s run playsound minecraft:music_disc.warmilourtank voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[team=piglin] at @s run playsound minecraft:music_disc.warabenemytank voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1

execute as @s[scores={spawneruse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warmilenemytank voice @a[team=piglinffa,distance=0.1..1000] ~ ~ ~ 1 1 1
execute as @s[scores={spawneruse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warabourtank voice @s[team=piglinffa] ~ ~ ~ 1 1 1
execute as @s[scores={spawneruse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warmilourtank voice @s[team=witherffa] ~ ~ ~ 1 1 1
execute as @s[scores={spawneruse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warabenemytank voice @a[team=witherffa,distance=0.1..1000] ~ ~ ~ 1 1 1
execute as @s[scores={spawneruse=1..}] run tag @s remove tank
execute as @s[scores={spawneruse=1..},team=wither] at @s run team join wither @e[tag=ravager,sort=nearest,limit=1]
execute as @s[scores={spawneruse=1..},team=piglin] at @s run team join piglin @e[tag=ravager,sort=nearest,limit=1]
execute as @s[scores={spawneruse=1..},team=witherffa] at @s run team join witherffa @e[tag=ravager,sort=nearest,limit=1]
execute as @s[scores={spawneruse=1..},team=piglinffa] at @s run team join piglinffa @e[tag=ravager,sort=nearest,limit=1]