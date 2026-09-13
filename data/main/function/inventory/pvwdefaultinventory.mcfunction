clear @s[tag=!ingame]
item replace entity @s[tag=!ingame] hotbar.3 with compass[custom_name=["",{"text":"Loadouts (RIGHT CLICK)","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true,custom_data={dontclear:1b}]
item replace entity @s[tag=!ingame] hotbar.4 with book[custom_name=["",{"text":"Skins/Calling Cards (RIGHT CLICK)","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true,custom_data={dontclear:1b}]
item replace entity @s[tag=!ingame] hotbar.5 with ender_chest[custom_name=["",{"text":"Inventory/Challenges/Settings/Prestige Mode (RIGHT CLICK)","italic":false,"underlined":true,"color":"yellow"}],enchantment_glint_override=true,custom_data={dontclear:1b}]
tellraw @s[tag=ingame] {"text":"Can't Change Class In Game","color": "red"}
tag @s remove pvwdefaultinventory