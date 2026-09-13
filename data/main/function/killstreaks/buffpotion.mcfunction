data modify entity @s Radius set value 3.0f
execute at @s run particle minecraft:heart ~ ~0.5 ~ 2 0.3 2 0 1 normal
scoreboard players add @s temp 1
kill @s[scores={temp=160..}]