execute as @s[tag=!got1perks] run scoreboard players add @s resupply 1
execute as @s[tag=got1perks] if score @s classslot10 matches 5 run scoreboard players add @s resupply 1
execute as @s[tag=got1perks] unless score @s classslot10 matches 5 run scoreboard players add @s resupply 1

execute as @s[scores={resupply=600..,classslot6=1}] run give @s cooked_beef[custom_name=["",{"text":"Steak","italic":false}]] 1
execute as @s[scores={resupply=600..,classslot6=2}] run give @s cooked_mutton[minecraft:food={saturation:9.6,nutrition:6,can_always_eat:false},minecraft:consumable={consume_seconds:1.5},custom_name=["",{"text":"Cooked Muttton","italic":false}]] 1
execute as @s[scores={resupply=600..,classslot6=3}] run give @s golden_carrot[custom_name=["",{"text":"Golden Carrot","italic":false}]] 1
execute as @s[scores={resupply=600..,classslot6=4}] run give @s minecraft:cookie[minecraft:food={saturation:6.5,nutrition:2,can_always_eat:true},minecraft:consumable={consume_seconds:1},custom_name=["",{"text":"Cookie","italic":false}]] 1
execute as @s[scores={resupply=600..}] at @s run playsound minecraft:music_disc.warsoundfour master @s ~ ~ ~ 0.1 0.7 0
execute as @s[scores={resupply=600..}] run scoreboard players reset @s resupply