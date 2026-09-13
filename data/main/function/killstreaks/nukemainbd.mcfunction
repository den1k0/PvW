scoreboard players add @s temp 1
execute as @s[scores={temp=200..}] at @s run kill @e[tag=nukebd,distance=..1000]
execute at @s run tp @s ~ ~-0.75 ~
execute at @s run particle minecraft:smoke ~ ~-15 ~ 4 10 4 0.1 20 normal
execute at @s[scores={temp=198..}] run particle minecraft:lava ~ ~-20 ~ 5 15 5 0 100 normal
execute at @s[scores={temp=198..}] run particle minecraft:explosion_emitter ~ ~-20 ~ 5 15 5 0 30 normal
execute at @s[scores={temp=198..}] run particle minecraft:poof ~ ~-20 ~ 5 15 5 1 200 normal