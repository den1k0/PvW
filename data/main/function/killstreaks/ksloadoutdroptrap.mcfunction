execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.warsoundthree master @s ~ ~ ~ 0.6 1 0
execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.warabgottank voice @s[team=piglin] ~ ~ ~ 0.4 1 0.4
execute at @s[scores={killstreak=3}] run playsound minecraft:music_disc.warmilgottank voice @s[team=wither] ~ ~ ~ 0.4 1 0.4
tag @s add trap
give @s villager_spawn_egg[entity_data={id:block_display,Glowing:1b,block_state:{Name:"minecraft:barrel"},Tags:["loadoutdroptrap","loadoutdroptrapinit"]},item_name=[{"text":"Loadout Drop Trap","italic":false,"color":"red"}],can_place_on=[{blocks:"#minecraft:mineable/hoe"},{blocks:"#minecraft:mineable/axe"},{blocks:"#minecraft:mineable/pickaxe"},{blocks:"#minecraft:mineable/shovel"},{blocks:"#minecraft:ice"},{blocks:"#minecraft:slabs"}],enchantment_glint_override=true,custom_data={dontdrop:1b},tooltip_display={hidden_components:["entity_data","custom_data","can_place_on","enchantment_glint_override"]}]
title @s actionbar {"text":"You got Loadout Drop Trap!","color":"gold"}
scoreboard players set @s temp2 3