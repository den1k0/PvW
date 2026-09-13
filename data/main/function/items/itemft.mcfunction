execute if items entity @s hotbar.* gunpowder run tag @s add readytoshoot
execute if items entity @s inventory.* gunpowder run tag @s add readytoshoot
execute if items entity @s weapon.offhand gunpowder run tag @s add readytoshoot
execute at @s[tag=readytoshoot] anchored eyes positioned ^ ^ ^0.5 summon minecraft:small_fireball summon minecraft:area_effect_cloud positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon minecraft:area_effect_cloud at @e[type=minecraft:area_effect_cloud,nbt={Age:0}] run data modify entity @e[type=minecraft:small_fireball,distance=..0.1,limit=1] Motion set from entity @s Pos
execute at @s[tag=readytoshoot] if items entity @s weapon.* blaze_powder[custom_data={ftms:1b}] anchored eyes positioned ^0.4 ^ ^0.5 summon minecraft:small_fireball summon minecraft:area_effect_cloud positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon minecraft:area_effect_cloud at @e[type=minecraft:area_effect_cloud,nbt={Age:0}] run data modify entity @e[type=minecraft:small_fireball,distance=..0.1,limit=1] Motion set from entity @s Pos
execute at @s[tag=readytoshoot] if items entity @s weapon.* blaze_powder[custom_data={ftms:1b}] anchored eyes positioned ^-0.4 ^ ^0.5 summon minecraft:small_fireball summon minecraft:area_effect_cloud positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon minecraft:area_effect_cloud at @e[type=minecraft:area_effect_cloud,nbt={Age:0}] run data modify entity @e[type=minecraft:small_fireball,distance=..0.1,limit=1] Motion set from entity @s Pos
execute at @s[tag=readytoshoot] anchored eyes positioned ^ ^ ^0.5 run data modify entity @n[type=small_fireball,distance=..0.1] Owner set from entity @s UUID
execute at @s[tag=readytoshoot] if items entity @s weapon.* blaze_powder[custom_data={ftms:1b}] anchored eyes positioned ^0.2 ^ ^0.5 run data modify entity @n[type=small_fireball,distance=..0.1] Owner set from entity @s UUID
execute at @s[tag=readytoshoot] if items entity @s weapon.* blaze_powder[custom_data={ftms:1b}] anchored eyes positioned ^-0.2 ^ ^0.5 run data modify entity @n[type=small_fireball,distance=..0.1] Owner set from entity @s UUID
execute at @s[tag=readytoshoot] anchored eyes positioned ^ ^ ^0.5 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 4
execute at @s[tag=readytoshoot] anchored eyes positioned ^ ^ ^0.5 run playsound entity.blaze.shoot master @a ~ ~ ~ 1 1 0
scoreboard players add @s ftcooldown 1
execute if items entity @s weapon.* blaze_powder[custom_data={ftqu:1b}] run scoreboard players add @s ftcooldown 1
clear @s[tag=readytoshoot] gunpowder 1
execute at @s[tag=readytoshoot] if items entity @s weapon.* blaze_powder[custom_data={ftms:1b}] run clear @s[tag=readytoshoot] gunpowder 1
execute as @s[tag=!readytoshoot] unless score @s voiceovertimer matches 1.. run function main:voiceover/outofammo
execute positioned 0 0 0 run kill @e[type=area_effect_cloud,distance=..5,nbt={Age:0}]
execute at @s[tag=readytoshoot] run kill @e[type=area_effect_cloud,distance=..3.5,nbt={Age:0}]
tag @s remove readytoshoot