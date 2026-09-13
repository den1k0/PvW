scoreboard players add @s temp 1
execute at @s[scores={temp=2..}] positioned ~ ~-1.5 ~ run effect give @a[distance=..0.35,gamemode=!spectator] slowness 3 1 true
execute at @s[scores={temp=2..}] positioned ~ ~-1.5 ~ run effect give @a[distance=..0.35,gamemode=!spectator] mining_fatigue 3 2 true
execute at @s on origin unless entity @s[distance=..16] run kill @n[type=fishing_bobber]