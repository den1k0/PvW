execute at @s if entity @a[gamemode=!spectator,distance=..3] unless entity @e[tag=ravagertrack,distance=..2] run summon minecraft:armor_stand ~ ~0.91 ~ {Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["ravagertrack"]}
execute at @s unless entity @a[gamemode=!spectator,distance=..3] as @e[tag=ravagertrack,distance=..2] run kill @s
execute as @s run scoreboard players add @s temp 1
execute as @s[scores={temp=600..}] at @s run kill @e[tag=ravagertrack,distance=..2]
execute as @s[scores={temp=600..}] run kill @s

execute as @s[team=piglin] at @s unless data entity @e[sort=nearest,limit=1,tag=ravagertrack] Passengers positioned ~ ~1 ~ unless entity @a[team=piglin,distance=..0.75,gamemode=!spectator] positioned ~ ~-1 ~ run ride @a[distance=..1.25,limit=1,sort=nearest,team=piglin,gamemode=!spectator] mount @e[sort=nearest,limit=1,tag=ravagertrack]
execute as @s[team=piglin] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[0] set from entity @a[distance=..0.5,limit=1,sort=nearest,team=piglin,gamemode=!spectator] Rotation[0]
execute as @s[team=piglin] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[1] set value 0.0f
execute as @s[team=piglin] at @s positioned ~ ~1.5 ~ if entity @a[distance=..0.5,team=piglin,gamemode=!spectator] positioned ~ ~-1.5 ~ rotated as @s run summon pig ^ ^ ^-1.15 {Tags:["rav1bl"],Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000000}],Health:0.0f}
execute at @s[team=piglin] run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~1 ~ 0.7 0.9 0.7 0 2 normal
execute as @s[team=piglin] at @s positioned ~ ~1.5 ~ as @a[distance=..0.5,team=piglin] positioned ~ ~-0.5 ~ positioned ^ ^ ^2.5 run damage @a[distance=..1.75,sort=random,limit=1] 8 minecraft:player_attack by @s
execute as @s[team=wither] at @s unless data entity @e[sort=nearest,limit=1,tag=ravagertrack] Passengers positioned ~ ~1 ~ unless entity @a[team=wither,distance=..0.75,gamemode=!spectator] positioned ~ ~-1 ~ run ride @a[distance=..1.25,limit=1,sort=nearest,team=wither,gamemode=!spectator] mount @e[sort=nearest,limit=1,tag=ravagertrack]
execute as @s[team=wither] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[0] set from entity @a[distance=..0.5,limit=1,sort=nearest,team=wither,gamemode=!spectator] Rotation[0]
execute as @s[team=wither] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[1] set value 0.0f
execute as @s[team=wither] at @s positioned ~ ~1.5 ~ if entity @a[distance=..0.5,team=wither,gamemode=!spectator] positioned ~ ~-1.5 ~ rotated as @s run summon pig ^ ^ ^-1.15 {Tags:["rav1bl"],Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000000}],Health:0.0f}
execute at @s[team=wither] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.7 0.9 0.7 0 2 normal
execute as @s[team=wither] at @s positioned ~ ~1.5 ~ as @a[distance=..0.5,team=wither] positioned ~ ~-0.5 ~ positioned ^ ^ ^2.5 run damage @a[distance=..1.75,sort=random,limit=1] 8 minecraft:player_attack by @s
execute as @s if entity @e[tag=gamemodeffa,distance=..1000] at @s unless data entity @e[sort=nearest,limit=1,tag=ravagertrack] Passengers positioned ~ ~1 ~ unless entity @a[distance=..0.75,gamemode=!spectator] positioned ~ ~-1 ~ run ride @a[distance=..1.25,limit=1,sort=nearest,gamemode=!spectator] mount @e[sort=nearest,limit=1,tag=ravagertrack]
execute as @s if entity @e[tag=gamemodeffa,distance=..1000] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[0] set from entity @a[distance=..0.5,limit=1,sort=nearest,gamemode=!spectator] Rotation[0]
execute as @s if entity @e[tag=gamemodeffa,distance=..1000] at @s positioned ~ ~1.5 ~ run data modify entity @s Rotation[1] set value 0.0f
execute as @s if entity @e[tag=gamemodeffa,distance=..1000] at @s positioned ~ ~1.5 ~ if entity @a[distance=..0.5,gamemode=!spectator] positioned ~ ~-1.5 ~ rotated as @s run summon pig ^ ^ ^-1.15 {Tags:["rav1bl"],Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000000}],Health:0.0f}
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~1 ~ 0.7 0.9 0.7 0 2 normal
execute as @s if entity @e[tag=gamemodeffa,distance=..1000] at @s positioned ~ ~1.5 ~ as @a[distance=..0.5] positioned ~ ~-0.5 ~ positioned ^ ^ ^2.5 run damage @a[distance=..1.75,sort=random,limit=1] 8 minecraft:player_attack by @s