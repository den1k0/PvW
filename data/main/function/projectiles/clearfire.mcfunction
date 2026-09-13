execute at @s run fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1 ~1.5 air replace fire
scoreboard players add @s temp 1
kill @s[scores={temp=2..}]