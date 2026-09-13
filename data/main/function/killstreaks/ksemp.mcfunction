execute at @s[scores={killstreak=7}] run playsound minecraft:music_disc.dvdabgotemp voice @s[team=piglin] ~ ~ ~ 0.7 1 0.7
execute at @s[scores={killstreak=7}] run playsound minecraft:music_disc.dvdmilgotemp voice @s[team=wither] ~ ~ ~ 0.7 1 0.7
execute at @s run playsound minecraft:music_disc.warsoundone master @s[] ~ ~ ~ 0.5 1 0.5
tag @s add emp
title @s actionbar {"text":"You got EMP!","color":"gold"}
give @s polished_blackstone_button[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Call Use EMP","italic":false,"color":"green"}],custom_data={dontdrop:1b}] 1
scoreboard players set @s temp2 7