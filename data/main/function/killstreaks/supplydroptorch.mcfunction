execute as @s[tag=supplydroptorchinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
execute at @s[tag=supplydroptorchinit] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=supplydroptorchinit] run particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0.07 24 normal
execute at @s[tag=supplydroptorchinit] run summon marker ~ ~ ~ {Tags:["supplydropballoonmarker","supplydropballoonmarkerinit","supplydropballoonpart"]}
tag @s remove supplydroptorchinit

execute at @s run particle dust{color:[1.0,0.0,0.0],scale:0.7} ~ ~0.65 ~ 0.1 0.1 0.1 0 1 normal
execute at @s run particle dust_pillar{block_state:"redstone_block"} ~ ~0.65 ~ 0.1 0.1 0.1 0 1 normal
execute at @s run particle dust{color:[1.0,0.0,0.0],scale:0.7} ~ ~0.65 ~ 0.1 0.1 0.1 0 1 normal
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.05 0.3 0.05 0 1 normal

scoreboard players add @s temp 1
execute if score @s temp matches 128 run tag @s add supplydroptorchready

execute at @s[tag=supplydroptorchready] run playsound minecraft:entity.item.break master @a ~ ~ ~ 0.6 1.2 0
execute at @s[tag=supplydroptorchready] run particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.07 12 normal
execute as @s[tag=supplydroptorchready] run kill @s