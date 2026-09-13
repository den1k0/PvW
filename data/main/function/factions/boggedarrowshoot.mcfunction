execute as @s[tag=!inground] if data entity @s {inGround:1b} run tag @s add inground
execute as @s[tag=inground] unless data entity @s {inGround:1b} run tag @s remove inground

execute as @s[tag=!inground] store result score @s motionx run data get entity @s Motion[0] 80
execute as @s[tag=!inground] store result score @s motiony run data get entity @s Motion[1] 80
execute as @s[tag=!inground] store result score @s motionz run data get entity @s Motion[2] 80

execute as @s[tag=inground] at @s unless block ~ ~-0.06 ~ #air unless block ~ ~0.06 ~ #air run tag @s add stuck
execute as @s[tag=stuck] store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=stuck] store result entity @s Motion[1] double -0.0075 run scoreboard players get @s motiony
execute as @s[tag=stuck] store result entity @s Motion[2] double 0.0075 run scoreboard players get @s motionz

execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~-0.06 ~ #air store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~-0.06 ~ #air store result entity @s Motion[1] double -0.0075 run scoreboard players get @s motiony
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~-0.06 ~ #air store result entity @s Motion[2] double 0.0075 run scoreboard players get @s motionz
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~0.06 ~ #air store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~0.06 ~ #air store result entity @s Motion[1] double -0.0075 run scoreboard players get @s motiony
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~0.06 ~ #air store result entity @s Motion[2] double 0.0075 run scoreboard players get @s motionz
execute as @s[tag=inground,tag=!stuck] at @s unless block ~-0.06 ~ ~ #air store result entity @s Motion[0] double -0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~-0.06 ~ ~ #air store result entity @s Motion[1] double 0.0075 run scoreboard players get @s motiony
execute as @s[tag=inground,tag=!stuck] at @s unless block ~-0.06 ~ ~ #air store result entity @s Motion[2] double 0.0075 run scoreboard players get @s motionz
execute as @s[tag=inground,tag=!stuck] at @s unless block ~0.06 ~ ~ #air store result entity @s Motion[0] double -0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~0.06 ~ ~ #air store result entity @s Motion[1] double 0.0075 run scoreboard players get @s motiony
execute as @s[tag=inground,tag=!stuck] at @s unless block ~0.06 ~ ~ #air store result entity @s Motion[2] double 0.0075 run scoreboard players get @s motionz
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~-0.06 #air store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~-0.06 #air store result entity @s Motion[1] double 0.0075 run scoreboard players get @s motiony
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~-0.06 #air store result entity @s Motion[2] double -0.0075 run scoreboard players get @s motionz
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~0.06 #air store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~0.06 #air store result entity @s Motion[0] double 0.0075 run scoreboard players get @s motionx
execute as @s[tag=inground,tag=!stuck] at @s unless block ~ ~ ~0.06 #air store result entity @s Motion[2] double -0.0075 run scoreboard players get @s motionz
scoreboard players add @s[tag=inground] bounces 1
execute as @s[tag=inground,scores={bounces=1..7}] at @s run summon area_effect_cloud ~ ~ ~ {Radius:1.5,Duration:70,potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:0,duration:120,show_particles:1b,show_icon:1b,ambient:1b}]}}
execute as @s[tag=inground,scores={bounces=1..7}] at @s run particle poof ~ ~0.25 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @s[tag=inground,scores={bounces=1..7}] at @s run particle block{block_state:"minecraft:slime_block"} ~ ~0.25 ~ 0.2 0.2 0.2 0.1 6 normal
execute at @s[tag=inground,scores={bounces=1..7}] run playsound minecraft:entity.slime.jump_small master @a ~ ~ ~ 1 1.2 0
execute as @s[tag=inground,scores={motionx=20..}] run data modify entity @s inGround set value 0b
execute as @s[tag=inground,scores={motionx=..-20}] run data modify entity @s inGround set value 0b
execute as @s[tag=inground,scores={motiony=20..}] run data modify entity @s inGround set value 0b
execute as @s[tag=inground,scores={motiony=..-20}] run data modify entity @s inGround set value 0b
execute as @s[tag=inground,scores={motionz=20..}] run data modify entity @s inGround set value 0b
execute as @s[tag=inground,scores={motionz=..-20}] run data modify entity @s inGround set value 0b
execute at @s[scores={bounces=8..}] run particle poof ~ ~0.25 ~ 0.4 0.4 0.4 0 20 normal
execute at @s[scores={bounces=8..}] run playsound minecraft:block.slime_block.hit master @a ~ ~ ~ 1 0.7 0
tag @s remove stuck
kill @s[scores={bounces=8..}]