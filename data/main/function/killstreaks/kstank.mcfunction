execute at @s[scores={killstreak=7}] run playsound minecraft:music_disc.warabgottank voice @s[team=piglin] ~ ~ ~ 0.5 1 0.5
execute at @s[scores={killstreak=7}] run playsound minecraft:music_disc.warmilgottank voice @s[team=wither] ~ ~ ~ 0.5 1 0.5
execute at @s run playsound minecraft:music_disc.warsoundthree master @s[] ~ ~ ~ 0.5 1 0.5
give @s minecraft:spawner[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Call In A Ravager Tank","italic":false,"color":"green"}],custom_data={dontdrop:1b}] 1
tag @s add tank
title @s actionbar {"text":"You got TANK!","color":"gold"}
scoreboard players set @s temp2 7