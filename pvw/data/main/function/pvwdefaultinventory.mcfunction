execute as @a[tag=pvwdefaultinventory] run clear @s
execute as @a[tag=pvwdefaultinventory] run give @s compass[custom_name='["",{"text":"Loadouts (RIGHT CLICK)","italic":false,"underlined":true}]',enchantments={levels:{sharpness:0}},custom_data={dontclear:1b}]
execute as @a[tag=pvwdefaultinventory] run tag @s remove pvwdefaultinventory