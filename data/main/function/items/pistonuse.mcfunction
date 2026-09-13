execute as @s[scores={pistonuse=1}] at @s align xyz if block ~ ~ ~ air run tp @s ~0.5 ~ ~0.5
execute as @s[scores={pistonuse=1}] at @s run playsound minecraft:block.piston.extend neutral @a ~ ~ ~ 0.5 1.2 0
execute as @s[scores={pistonuse=1}] at @s run particle poof ~ ~0.5 ~ 0.4 0.4 0.4 0 16 normal
scoreboard players add @s pistonuse 1 
execute as @s[scores={pistonuse=60..}] run give @s minecraft:piston[enchantment_glint_override=true,custom_name={"text":"Press RMB To Align Yourself"},minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'}]
execute as @s[scores={pistonuse=60..}] run scoreboard players reset @s pistonuse
