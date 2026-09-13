execute as @s[tag=cakeblockinit] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["cakeblockit","cakeblockpart"],width:0.75f,height:0.625f}
execute as @s[tag=cakeblockpart] run tag @s add applygravity
execute as @s[tag=cakeblockinit] at @s run scoreboard players operation @s playerid = @p[tag=hasfieldupgrade,scores={classslot9=1},nbt=!{Inventory:[{id:"minecraft:chicken_spawn_egg"}]}] playerid
execute as @s[tag=cakeblockinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
execute as @s[tag=cakeblockinit] at @s run particle block{block_state:"minecraft:white_wool"} ~ ~0.25 ~ 0.3 0.3 0.3 0 8 normal
execute as @s[tag=cakeblockinit] at @s run playsound minecraft:block.wool.place master @a ~ ~ ~ 1 1 0
execute as @s[tag=cakeblockinit] at @s as @p[tag=hasfieldupgrade,scores={classslot9=1},nbt=!{Inventory:[{id:"minecraft:chicken_spawn_egg"}]}] run tag @s remove hasfieldupgrade
execute as @s[tag=cakeblockit] if data entity @s interaction run tag @s add cakeblockitdo
execute as @s[tag=cakeblockitdo] run scoreboard players add @s temp 1
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 1 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "1"
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 2 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "2"
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 3 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "3"
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 4 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "4"
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 5 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "5"
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 6 run data modify entity @e[tag=cakeblock,limit=1,sort=nearest] block_state.Properties.bites set value "6"
execute as @s[tag=cakeblockitdo] at @s run particle block{block_state:"minecraft:white_wool"} ~ ~0.25 ~ 0.3 0.3 0.3 0 4 normal
execute as @s[tag=cakeblockitdo] at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 1 0
execute as @s[tag=cakeblockitdo] on target run effect give @s minecraft:saturation 1 2 true
execute as @s[tag=cakeblockitdo] at @s if score @s temp matches 7.. run kill @e[tag=cakeblockpart,distance=..0.1]
execute as @s[tag=cakeblockitdo] run data remove entity @s interaction
execute as @s[tag=cakeblockitdo] run tag @s remove cakeblockitdo
scoreboard players add @s[tag=cakeblockit] temp2 1
execute as @s[tag=cakeblockit] if score @s temp2 matches 600.. at @s run playsound minecraft:block.wool.place master @a ~ ~ ~ 1 0.7 0
execute as @s[tag=cakeblockit] if score @s temp2 matches 600.. at @s run particle minecraft:block{block_state:"minecraft:white_wool"} ~ ~0.25 ~ 0.3 0.3 0.3 0 8 normal
execute as @s[tag=cakeblockit] if score @s temp2 matches 600.. at @s run kill @e[tag=cakeblockpart,distance=..0.1]
execute as @s[tag=cakeblockinit] run tag @s remove cakeblockinit