execute at @s[scores={killstreak=5}] run playsound minecraft:music_disc.warabgottank voice @s[team=piglin] ~ ~ ~ 0.7 1 0.7
execute at @s[scores={killstreak=5}] run playsound minecraft:music_disc.warabgottank voice @s[team=wither] ~ ~ ~ 0.7 1 0.7
execute at @s run playsound minecraft:music_disc.warsoundthree master @s[] ~ ~ ~ 0.5 1 0.5
give @s turtle_spawn_egg[item_model='redstone_torch',entity_data={id:block_display,block_state:{Name:"minecraft:redstone_torch"},Tags:["supplydroptorch","supplydroptorchinit"]},item_name=[{"text":"Place The Torch On The Ground To Call In Supply Drop","italic":false,"color":"aqua"}],can_place_on=[{blocks:"#minecraft:mineable/hoe"},{blocks:"#minecraft:mineable/axe"},{blocks:"#minecraft:mineable/pickaxe"},{blocks:"#minecraft:mineable/shovel"},{blocks:"#minecraft:ice"},{blocks:"#minecraft:slabs"}],enchantment_glint_override=true,custom_data={dontdrop:1b},tooltip_display={hidden_components:["entity_data","custom_data","can_place_on","enchantment_glint_override"]}]
tag @s add supplydrop
title @s actionbar {"text":"You got Supply Drop!","color":"gold"}
scoreboard players set @s temp2 5