execute if items entity @s weapon.mainhand compass[custom_data={dontclear:1b}] run function main:loadout/loadoutchange
execute if items entity @s weapon.mainhand book[custom_data={dontclear:1b}] run function main:skins/skinchange
execute if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run function main:inventory/inventorychange
execute unless items entity @s weapon.mainhand compass[custom_data={dontclear:1b}] run tag @s remove loadoutchange
execute unless items entity @s weapon.mainhand book[custom_data={dontclear:1b}] run tag @s remove skinchange
execute unless items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s remove inventorychange

clear @s[gamemode=adventure,tag=!ingame,team=Neutral] *[!custom_data={dontclear:1b}]