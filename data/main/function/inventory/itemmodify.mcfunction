execute at @s run summon armor_stand ~ ~ ~ {Tags:["caseitemmodifier"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute at @s run item replace entity @n[tag=caseitemmodifier] weapon.mainhand from entity @s enderchest.26
execute store result score @s random run random value 1..200
execute at @s run scoreboard players add @n[tag=caseitemmodifier] random 200
execute at @s run scoreboard players operation @n[tag=caseitemmodifier] random -= @s random
scoreboard players operation @s random *= 65793 number
scoreboard players add @s random 3618615

execute at @s store result entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute at @s[tag=frostbitecaseopen] run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Collection: ","color":"dark_gray","italic":false},{"text":"Frostbite","color":"aqua","italic":false}]
execute at @s if items entity @s enderchest.26 *[custom_data={common:1b}] run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Common","color":"yellow","italic":false}]
execute at @s if items entity @s enderchest.26 *[custom_data={rare:1b}] run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Rare","color":"aqua","italic":false}]
execute at @s if items entity @s enderchest.26 *[custom_data={legendary:1b}] run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Legendary","color":"gold","italic":false}]
execute at @s if score @n[tag=caseitemmodifier] random matches 0..19 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Condition: ","color":"dark_gray","italic":false},{"text":"Forged New","color":"gray","italic":false}]
execute at @s if score @n[tag=caseitemmodifier] random matches 20..59 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Condition: ","color":"dark_gray","italic":false},{"text":"Mild Wear","color":"gray","italic":false}]
execute at @s if score @n[tag=caseitemmodifier] random matches 60..119 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Condition: ","color":"dark_gray","italic":false},{"text":"Fight Tested","color":"gray","italic":false}]
execute at @s if score @n[tag=caseitemmodifier] random matches 120..200 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Condition: ","color":"dark_gray","italic":false},{"text":"Wildly Worn","color":"gray","italic":false}]

execute at @s run scoreboard players operation @n[tag=caseitemmodifier] random *= 5 number
execute at @s run summon marker ~ ~1.5 ~ {Tags:["caseitemmodifierfloat"]}
execute at @s store result entity @n[tag=caseitemmodifierfloat] data.float int 1 run scoreboard players get @n[tag=caseitemmodifier] random
execute at @s run function main:inventory/itemtext with entity @n[tag=caseitemmodifierfloat] data
execute at @s run kill @n[tag=caseitemmodifierfloat]

execute at @s store result score @n[tag=caseitemmodifier] random run random value 1..5
execute at @s if score @n[tag=caseitemmodifier] random matches 1 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Souls: ","color":"dark_purple","italic":false},{"text":"0","color":"dark_purple","italic":false}]
execute at @s if score @n[tag=caseitemmodifier] random matches 1 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data".souls set value 0
execute at @s if score @n[tag=caseitemmodifier] random matches 1 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" +SoulTrack","color":"dark_purple","italic":false}

execute at @s run item replace entity @s enderchest.26 from entity @n[tag=caseitemmodifier] weapon.mainhand
execute at @s run function main:inventory/itemtostorage

kill @n[tag=caseitemmodifier]