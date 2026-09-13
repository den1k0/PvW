execute at @s run playsound minecraft:music_disc.warsoundtwo master @s[] ~ ~ ~ 0.5 1.2 0.5
give @s minecraft:sticky_piston[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Place I.M.S","italic":false,"color":"gold"}],custom_data={dontdrop:1b}] 1
tag @s add ims
title @s actionbar {"text":"You got I.M.S!","color":"gold"}
scoreboard players set @s temp2 5