execute as @s[tag=supplydropballoonmarkerinit] store result entity @s Rotation[0] float 1 run random value -180..180
execute as @s[tag=supplydropballoonmarkerinit] run scoreboard players add #balloonid playerid 1
execute as @s[tag=supplydropballoonmarkerinit] at @s store result score @s playerid run scoreboard players get #balloonid playerid
execute at @s[tag=supplydropballoonmarkerinit] run tp @s ^ ^ ^32
execute at @s[tag=supplydropballoonmarkerinit] run tp @s ~ ~24 ~ ~180 ~
execute at @s[tag=supplydropballoonmarkerinit] run particle poof ~ ~-3 ~ 1.2 1.2 1.2 0.2 80 force
execute at @s[tag=supplydropballoonmarkerinit] run summon block_display ~ ~ ~ {block_state:{Name:"cauldron"},Tags:["supplydropballoon1","supplydropballoonpart"]}
execute at @s[tag=supplydropballoonmarkerinit] run summon block_display ~ ~ ~ {block_state:{Name:"chain"},Tags:["supplydropballoon2","supplydropballoonpart"]}
execute at @s[tag=supplydropballoonmarkerinit] run summon block_display ~ ~ ~ {block_state:{Name:"yellow_wool"},Tags:["supplydropballoon3","supplydropballoonpart"]}
execute at @s[tag=supplydropballoonmarkerinit] if entity @p[scores={turtleegguse=1..},team=piglin,distance=..1000] as @e[tag=supplydropballoon3,distance=..0.1] run data modify entity @s block_state.Name set value "orange_wool"
execute at @s[tag=supplydropballoonmarkerinit] if entity @p[scores={turtleegguse=1..},team=wither,distance=..1000] as @e[tag=supplydropballoon3,distance=..0.1] run data modify entity @s block_state.Name set value "light_blue_wool" 
execute at @s[tag=supplydropballoonmarkerinit] run scoreboard players operation @e[tag=supplydropballoonpart,distance=..0.1] playerid = @s playerid
execute at @s[tag=supplydropballoonmarkerinit] as @e[tag=supplydropballoonpart,distance=..0.1] run data modify entity @s teleport_duration set value 1
execute at @s[tag=supplydropballoonmarkerinit] as @e[tag=supplydropballoonpart,distance=..0.1] run data modify entity @s transformation.translation set value [-1.5f,0.0f,-1.5f]
execute at @s[tag=supplydropballoonmarkerinit] as @e[tag=supplydropballoonpart,distance=..0.1] run data modify entity @s transformation.scale set value [3f,3f,3f]
tag @s remove supplydropballoonmarkerinit

execute at @s as @e[distance=..100,tag=supplydropballoon1] if score @s playerid = @n[tag=supplydropballoonmarker] playerid run tp @s ~ ~-3 ~ ~ ~
execute at @s as @e[distance=..100,tag=supplydropballoon2] if score @s playerid = @n[tag=supplydropballoonmarker] playerid run tp @s ~ ~ ~ ~ ~
execute at @s as @e[distance=..100,tag=supplydropballoon3] if score @s playerid = @n[tag=supplydropballoonmarker] playerid run tp @s ~ ~3 ~ ~ ~
execute at @s run playsound minecraft:block.shulker_box.open master @a ~ ~ ~ 1.87 0.65 0
execute at @s run particle large_smoke ~ ~-1 ~ 1 1 1 0.1 2 force

execute at @s run tp @s[tag=!supplydropballoonready] ^ ^ ^0.25
scoreboard players add @s temp 1
execute if score @s temp matches 128 run tag @s add supplydropballoonready

execute at @s[tag=supplydropballoonready,scores={temp=128}] run particle poof ~ ~-4 ~ 1 1 1 0.15 60 force
execute at @s[tag=supplydropballoonready,scores={temp=128}] run playsound minecraft:item.armor.unequip_wolf master @a ~ ~ ~ 2.5 0.7 0
execute at @s[tag=supplydropballoonready,scores={temp=128}] run playsound minecraft:item.bundle.drop_contents master @a ~ ~ ~ 2.5 0.7 0
execute at @s[tag=supplydropballoonready,scores={temp=128}] run summon block_display ~ ~ ~ {block_state:{Name:"beehive"},Tags:["supplydropbdinit","supplydropbd"]}
execute at @s[tag=supplydropballoonready,scores={temp=128}] run summon block_display ~ ~ ~ {block_state:{Name:"beehive"},Tags:["supplydropbdinit","supplydropbd"]}
execute at @s[tag=supplydropballoonready,scores={temp=128}] run summon block_display ~ ~ ~ {block_state:{Name:"beehive"},Tags:["supplydropbdinit","supplydropbd"]}
execute at @s[tag=supplydropballoonready,scores={temp=128}] run summon block_display ~ ~ ~ {block_state:{Name:"beehive"},Tags:["supplydropbdinit","supplydropbd"]}
execute at @s[tag=supplydropballoonready,scores={temp=128}] run summon block_display ~ ~ ~ {block_state:{Name:"beehive"},Tags:["supplydropbdinit","supplydropbd"]}

execute if score @s temp matches 256 run tag @s remove supplydropballoonready

execute if score @s temp matches 384.. at @s run particle poof ~ ~-4 ~ 1.2 1.2 1.2 0.2 80 force
execute if score @s temp matches 384.. at @s as @e[distance=..100,tag=supplydropballoonpart,type=!marker] if score @s playerid = @n[tag=supplydropballoonmarker] playerid run kill @s
execute if score @s temp matches 384.. run kill @s