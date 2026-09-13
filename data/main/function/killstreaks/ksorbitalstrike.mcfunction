give @s minecraft:firework_star[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Call In An Orbital Strike","italic":false,"color":"green"}],custom_data={dontdrop:1b}] 1
title @s actionbar {"text":"You got ORBITAL STRIKE!","color":"gold"}
execute at @s run playsound minecraft:music_disc.warsoundone master @s ~ ~ ~ 0.5 1 0.5
scoreboard players set @s temp2 7