execute at @s[scores={killstreak=5}] run playsound minecraft:music_disc.warabgotairstrike voice @s[team=piglin] ~ ~ ~ 0.7 1 0.7
execute at @s[scores={killstreak=5}] run playsound minecraft:music_disc.warmilgotairstrike voice @s[team=wither] ~ ~ ~ 0.7 1 0.7
execute at @s run playsound minecraft:music_disc.warsoundone master @s[] ~ ~ ~ 0.5 1 0.5
give @s minecraft:lightning_rod[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Use Airstrike","italic":false,"color":"green"}],custom_data={dontdrop:1b}] 1
tag @s add airstrike
title @s actionbar {"text":"You got AIRSTRIKE!","color":"gold"}
scoreboard players set @s temp2 5