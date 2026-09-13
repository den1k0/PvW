scoreboard players add @s timer 1
effect give @s strength 1 0 true
effect give @s resistance 1 2 true
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.5 ~ 0.4 0.3 0.4 0 1 normal
execute at @s[tag=piglinwolf] run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.5 ~ 0.4 0.3 0.4 0 1 normal
execute at @s[tag=witherwolf] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 0.4 0.3 0.4 0 1 normal
kill @s[scores={timer=600..}]