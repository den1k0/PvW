execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.iiradarfive master @s ~ ~ ~ 1 1 0
execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.tdmabgotuav voice @s[team=piglin] ~ ~ ~ 0.4 1 0.4
execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.tdmmilgotuav voice @s[team=wither] ~ ~ ~ 0.4 1 0.4
tag @s add uav
give @s minecraft:stone_button[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Use UAV","italic":false,"color":"green"}],custom_data={dontdrop:1b}] 1
title @s actionbar {"text":"You got UAV!","color":"gold"}
scoreboard players set @s temp2 3