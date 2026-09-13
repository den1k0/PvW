effect give @s speed 1 0 true
effect clear @s[tag=!juggernaut] glowing
effect clear @s blindness
effect give @s haste 1 2 true
execute as @s[scores={playerkill=1..}] run effect give @s saturation 1 0 true
execute as @s[scores={playerkill=1..,classslot2=1..2}] run give @s arrow 4
execute as @s[scores={playerkill=1..,classslot2=6}] run give @s arrow 3
execute as @s[scores={playerkill=1..,classslot2=7}] run give @s gunpowder 6
execute as @s[scores={playerkill=1..,classslot2=4}] run give @s firework_rocket[fireworks={flight_duration:1,explosions:[{shape:"burst",has_trail:true,colors:[12725261],fade_colors:[4539717]},{shape:"burst",has_trail:true,colors:[14709769],fade_colors:[3026478]}]}] 4
execute as @s[scores={playerkill=1..}] run effect give @s speed 3 2 true
execute as @s[scores={playerkill=1..,classslot2=3}] run scoreboard players set @s shieldbash 20
execute as @s[scores={playerkill=1..,classslot2=3}] run scoreboard players set @s shieldtemp 100
execute as @a[scores={bowuse=1..},tag=got1perks] at @s positioned ~ ~1.65 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Silent set value 1b
execute as @a[scores={crossbowuse=1..},tag=got1perks] at @s positioned ~ ~1.65 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Silent set value 1b
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} run scoreboard players add @s poisontimer 1
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} run scoreboard players reset @s poisontimer
execute if score @s poisontimer matches 20.. run effect clear @s poison