execute at @s if block ~ ~1 ~ minecraft:ladder positioned ~ ~1.65 ~ unless block ^ ^ ^1 air run effect give @s minecraft:levitation 1 5 true
execute at @s unless block ~ ~0.5 ~ minecraft:ladder run effect clear @s minecraft:levitation
execute at @s positioned ~ ~1.65 ~ if block ^ ^ ^1 minecraft:air run effect clear @s minecraft:levitation
scoreboard players reset @s climbladder