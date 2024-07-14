effect give @a[scores={classslot10=1},tag=ingame] minecraft:speed 1 0 true
execute as @a[scores={playerkill=1..,classslot10=2,classslot2=1..2},tag=ingame] run give @s arrow 4
execute as @a[scores={playerkill=1..,classslot10=2,classslot2=4},tag=ingame] run give @s firework_rocket[fireworks={flight_duration:1,explosions:[{shape:"burst",has_trail:true,colors:[I;12725261],fade_colors:[I;4539717]},{shape:"burst",has_trail:true,colors:[I;14709769],fade_colors:[I;3026478]}]}] 4
execute as @a[scores={playerkill=1..,classslot10=2},tag=ingame] run effect give @s saturation 1 0 true

execute as @a[scores={classslot11=4},tag=ingame,team=piglin] at @s run effect give @a[team=wither,distance=..3.5] minecraft:glowing 1 0 false
execute as @a[scores={classslot11=4},tag=ingame,team=wither] at @s run effect give @a[team=piglin,distance=..3.5] minecraft:glowing 1 0 false

effect clear @a[scores={classslot10=3},tag=ingame] glowing
effect clear @a[scores={classslot10=3},tag=ingame] blindness
effect give @a[scores={playerkill=1..,classslot10=4},tag=ingame] speed 3 2 true
execute as @a[scores={classslot10=5},tag=ingame] run scoreboard players add @s resupply 1
execute as @a[tag=!ingame] run scoreboard players set @s resupply 0
execute as @a[scores={classslot10=5,resupply=600..,classslot6=1},tag=ingame] run give @s cooked_beef 1
execute as @a[scores={classslot10=5,resupply=600..,classslot6=1},tag=ingame] run give @s cooked_mutton 1
execute as @a[scores={classslot10=5,resupply=600..,classslot6=1},tag=ingame] run give @s golden_carrot 1
execute as @a[scores={resupply=600..}] at @s run playsound minecraft:music_disc.warsoundfour master @s ~ ~ ~ 0.1 0.7 0
execute as @a[scores={resupply=600..}] run scoreboard players reset @s resupply

execute as @a[scores={climbladder=20..,classslot11=1},tag=ingame] at @s if block ~ ~1 ~ minecraft:ladder positioned ~ ~1.65 ~ unless block ^ ^ ^1 air run effect give @s minecraft:levitation 1 5 true
execute as @a[scores={climbladder=20..,classslot11=1},tag=ingame] at @s unless block ~ ~0.5 ~ minecraft:ladder run effect clear @s minecraft:levitation
execute as @a[scores={climbladder=20..,classslot11=1},tag=ingame] at @s positioned ~ ~1.65 ~ if block ^ ^ ^1 minecraft:air run effect clear @s minecraft:levitation
scoreboard players reset @a climbladder
effect give @a[scores={classslot11=2},tag=ingame] minecraft:fire_resistance 1 0 true
execute as @a[scores={playerkill=1..,classslot11=3},tag=ingame] run effect give @s minecraft:strength 10 0 true
execute as @a[scores={classslot11=4,bowuse=1..},tag=ingame] at @s positioned ~ ~1.65 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Silent set value 1b
execute as @a[scores={classslot11=4,crossbowuse=1..},tag=ingame] at @s positioned ~ ~1.65 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Silent set value 1b
execute as @a[scores={classslot11=5,killstreak=0},tag=ingame] run scoreboard players set @s killstreak 1