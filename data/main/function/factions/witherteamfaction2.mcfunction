execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"sneak":false}}}} run scoreboard players reset @s sneakattack
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"forward":true}}}} run scoreboard players reset @s sneakattack
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"backward":true}}}} run scoreboard players reset @s sneakattack
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"left":true}}}} run scoreboard players reset @s sneakattack
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"right":true}}}} run scoreboard players reset @s sneakattack
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","stats":[],"input":{"sneak":true}}}} run scoreboard players add @s sneakattack 1
execute if score @s move2 matches 1.. run scoreboard players reset @s sneakattack
execute if score @s sneakattack matches 20.. run effect give @s water_breathing 1 0 true
execute if score @s sneakattack matches 20.. run effect give @s strength 1 0 true
execute if score @s sneakattack matches 20.. run effect give @s invisibility 1 0 true