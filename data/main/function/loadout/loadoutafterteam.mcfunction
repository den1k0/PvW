execute as @s[team=piglin] run tag @s add loadoutreadytogive
execute as @s[team=piglinffa] run tag @s add loadoutreadytogive
execute as @s[team=wither] run tag @s add loadoutreadytogive
execute as @s[team=witherffa] run tag @s add loadoutreadytogive

tag @s[tag=loadoutreadytogive] add loadout
tag @s[tag=loadoutreadytogive] remove loadoutafterteam
tag @s[tag=loadoutreadytogive] remove loadoutreadytogive