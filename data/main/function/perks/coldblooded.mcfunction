effect clear @s[tag=!juggernaut] glowing
effect clear @s[tag=!juggernaut] blindness
execute as @s[scores={bowuse=1..}] at @s positioned ~ ~1.65 ~ run data modify entity @n[type=arrow] Silent set value 1b
execute as @s[scores={crossbowuse=1..}] at @s positioned ~ ~1.65 ~ run data modify entity @n[type=arrow] Silent set value 1b
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} run scoreboard players add @s poisontimer 1
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} run scoreboard players reset @s poisontimer
execute if score @s poisontimer matches 20.. run effect clear @s poison