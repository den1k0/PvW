execute store result score @s random run random value 1..4

execute if score @s random matches 1 run item replace entity @s enderchest.8 with jukebox[minecraft:custom_name=[{"text":"Music Disc Box","italic":false,"color":"light_purple"}],minecraft:enchantment_glint_override=true,custom_data={musicdiscbox:1b},lore=[["",{"text":"Open The Box To Get A Random Music Disc","italic":false,"color":"gold"}]]]
execute if score @s random matches 1 run tag @s add itemtoinventory
execute if score @s random matches 1 run tellraw @s [{"text":"Reward: ","color": "yellow"},{"text":"Music Disc Box","color": "light_purple"}]
execute if score @s random matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.5 

execute if score @s random matches 2..4 run item replace entity @s enderchest.8 with shulker_shell[custom_name={"text":"Frostbite Weapon Skin Case","italic":false,"color":"aqua"},enchantment_glint_override=true,custom_data={frostbitecase:1b},lore=[["",{"text":"Open The Case To Get A Random Weapon Skin","italic":false,"color":"gold"}]],item_model=frostbite_case,minecraft:dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]}]
execute if score @s random matches 2..4 run tag @s add itemtoinventory
execute if score @s random matches 2..4 run tellraw @s [{"text":"Reward: ","color": "yellow"},{"text":"Frostbite Weapon Skin Case","color": "aqua"}]
execute if score @s random matches 2..4 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.5 