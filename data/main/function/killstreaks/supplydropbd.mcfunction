execute as @s[tag=supplydropbdinit] store result score @s temp run data get entity @s Pos[0] 10
execute as @s[tag=supplydropbdinit] store result score @s timer run data get entity @s Pos[1] 10
execute as @s[tag=supplydropbdinit] store result score @s temp2 run data get entity @s Pos[2] 10
execute as @s[tag=supplydropbdinit] store result score @s random run random value -35..35
execute as @s[tag=supplydropbdinit] run scoreboard players operation @s temp += @s random
execute as @s[tag=supplydropbdinit] store result score @s random run random value -25..25
execute as @s[tag=supplydropbdinit] run scoreboard players operation @s timer += @s random
execute as @s[tag=supplydropbdinit] store result score @s random run random value -35..35
execute as @s[tag=supplydropbdinit] run scoreboard players operation @s temp2 += @s random
execute as @s[tag=supplydropbdinit] store result entity @s Pos[0] double 0.1 run scoreboard players get @s temp
execute as @s[tag=supplydropbdinit] store result entity @s Pos[1] double 0.1 run scoreboard players get @s timer
execute as @s[tag=supplydropbdinit] store result entity @s Pos[2] double 0.1 run scoreboard players get @s temp2
execute as @s[tag=supplydropbdinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
tag @s remove supplydropbdinit

execute at @s run particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 4 normal
execute at @s if block ~ ~-0.25 ~ #air run tp @s ~ ~-0.25 ~
execute at @s unless block ~ ~-0.5 ~ #air run tag @s add supplydropbdbreak

scoreboard players add @s temp3 1
tag @s[scores={temp3=200..}] add supplydropbdbreak

execute at @s[tag=supplydropbdbreak] run playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 0.5 1.3 0
execute at @s[tag=supplydropbdbreak] run particle block{block_state:"minecraft:beehive"} ~ ~0.5 ~ 0.3 0.3 0.3 0 32 normal
execute at @s[tag=supplydropbdbreak] run summon item ~ ~ ~ {Item:{id:"arrow",count:1},Tags:["supplydropitem"]}
execute at @s[tag=supplydropbdbreak] run summon item ~ ~ ~ {Item:{id:"arrow",count:1},Tags:["supplydropitem"]}
execute at @s[tag=supplydropbdbreak] run summon item ~ ~ ~ {Item:{id:"arrow",count:1},Tags:["supplydropitem"]}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] store result entity @s Item.count int 1 run random value 1..5
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] store result score @s random run random value 1..15
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 1..3 run data merge entity @s {Item:{id:"arrow",components:{custom_name:{"text":"Arrow","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 4..6 run data merge entity @s {Item:{id:"cooked_beef",components:{custom_name:{"text":"Cooked Beef","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 7..9 run data merge entity @s {Item:{id:"golden_carrot",components:{custom_name:{"text":"Golden Carrot","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 10..12 run data merge entity @s {Item:{id:"gunpowder",components:{custom_name:{"text":"Gunpowder","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 13 run data merge entity @s {Item:{id:"potion",count:1,components:{potion_contents:{potion:"minecraft:strong_healing"},custom_name:{"text":"Healing Potion","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 14 run data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{custom_name:{"text":"Resistance Potion","italic": false},"minecraft:potion_contents":{custom_effects:[{id:"minecraft:resistance",amplifier:0,duration:200,show_particles:1b,show_icon:1b,ambient:0b}]}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] if score @s random matches 15 run data merge entity @s {Item:{id:"golden_apple",count:1,components:{custom_name:{"text":"Golden Apple","italic": false}}}}
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] store result entity @s Motion[0] double 0.01 run random value 1..20
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] store result entity @s Motion[1] double 0.01 run random value 1..20
execute at @s[tag=supplydropbdbreak] as @e[tag=supplydropitem,distance=..0.1] store result entity @s Motion[2] double 0.01 run random value 1..20
execute as @s[tag=supplydropbdbreak] run kill @s