execute at @s run playsound minecraft:music_disc.tdmnukeambient master @s ~ ~ ~ 0.5 1 0.5
execute at @s run playsound minecraft:music_disc.tdmabgotnuke voice @s[team=piglin] ~ ~ ~ 0.4 1 0.4
execute at @s run playsound minecraft:music_disc.tdmmilgotnuke voice @s[team=wither] ~ ~ ~ 0.4 1 0.4
give @s nether_star[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Call In A NUKE","italic":false,"color":"red"}],custom_data={dontdrop:1b}] 1
tag @s add nuke
title @s title {"text":"You got NUKE!","color":"red"}
scoreboard players set @s temp2 15