execute if score @s totalkills matches ..1 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.0
execute if score @s totalkills matches 2..3 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.1
execute if score @s totalkills matches 4..5 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.2
execute if score @s totalkills matches 6..7 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.3
execute if score @s totalkills matches 8..9 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.4
execute if score @s totalkills matches 10..11 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.5
execute if score @s totalkills matches 12..13 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.6
execute if score @s totalkills matches 14..15 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.7
execute if score @s totalkills matches 16..17 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.8
execute if score @s totalkills matches 18..19 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.9
execute if score @s totalkills matches 20..21 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.10
execute if score @s totalkills matches 22..23 at @n[tag=mpas] run item replace entity @s hotbar.0 from block ~ ~-2 ~ container.11
execute if score @s totalkills matches 24.. at @n[tag=mpas] run item replace entity @s hotbar.0 with trident[damage=248,custom_name=["",{"text":"Tomahawk","italic":false}],minecraft:enchantments={sharpness:17},attribute_modifiers=[{type:"attack_damage",amount:-100,id:"attack_damage",operation:add_value},{type:"attack_speed",amount:-100,id:"attack_speed",operation:add_value}]]

clear @s arrow
clear @s firework_rocket
clear @s gunpowder
execute if items entity @s hotbar.* bow run give @s arrow[custom_name=["",{"text":"Arrow","italic":false}]] 64
execute if items entity @s hotbar.* crossbow[!custom_data={fc:1b}] run give @s arrow[custom_name=["",{"text":"Arrow","italic":false}]] 64
execute if items entity @s hotbar.* crossbow[custom_data={fc:1b}] run give @s firework_rocket[fireworks={flight_duration:1,explosions:[{shape:"burst",has_trail:true,colors:[12725261],fade_colors:[4539717]},{shape:"burst",has_trail:true,colors:[14709769],fade_colors:[3026478]}]},custom_name=["",{"text":"Firework Rocket","italic":false}]] 64
execute if items entity @s hotbar.* end_rod run give @s arrow[custom_name=["",{"text":"Arrow","italic":false}]] 64
execute if items entity @s hotbar.* blaze_powder run give @s gunpowder[custom_name=["",{"text":"Gunpowder","italic":false}]] 64