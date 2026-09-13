execute as @s[scores={graffiti=1}] store result score @s graffiti run scoreboard players get @s graffitislot1
execute as @s[scores={graffiti=2}] store result score @s graffiti run scoreboard players get @s graffitislot2
execute as @s[scores={graffiti=3}] store result score @s graffiti run scoreboard players get @s graffitislot3

execute at @s anchored eyes positioned ^ ^ ^4 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^3.5 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^3 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^2.5 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^2 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^1.5 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^1 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply
execute at @s anchored eyes positioned ^ ^ ^0.5 unless block ^ ^ ^ #air unless block ^ ^ ^ #sword_efficient unless block ^ ^ ^ #snow unless block ^ ^ ^ #all_signs run tag @s add graffiticanapply

execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run summon item_display ~ ~ ~ {Tags:["graffiti","graffitiinit"]}
execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 rotated as @s run rotate @n[tag=graffitiinit] ~ ~
execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run playsound item.ink_sac.use master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 1.2 0
execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] transformation.scale set value [1.0f,1.0f,0.0625f]

execute at @s[scores={graffiti=-1},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] item set value {id:"paper",count:1,components:{item_model:'graffitipvw'}}
execute at @s[scores={graffiti=-1},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] transformation.scale set value [1.35f,1.0f,1.0f]
execute at @s[scores={graffiti=-1},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.5 run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.05 32 normal
execute at @s[scores={graffiti=-2},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] item set value {id:"paper",count:1,components:{item_model:'graffitiholdup'}}
execute at @s[scores={graffiti=-2},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] transformation.scale set value [1.5f,0.5f,1.0f]
execute at @s[scores={graffiti=-2},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.5 run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.05 32 normal
execute at @s[scores={graffiti=-3},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] item set value {id:"paper",count:1,components:{item_model:'graffitipiglin'}}
execute at @s[scores={graffiti=-3},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 run data modify entity @n[tag=graffitiinit] transformation.scale set value [3.2f,0.5f,1.0f]
execute at @s[scores={graffiti=-3},tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.5 run particle dust{color:[1.000,0.750,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.05 32 normal

execute at @s[tag=graffiticanapply] anchored eyes positioned ^ ^ ^0.25 as @n[tag=graffitiinit] run function main:entities/graffitiapply

tellraw @s[tag=!graffiticanapply] [{"text": "Cannot Apply Graffiti. Applyable Surface Too Far Away.","color": "red"}]
scoreboard players add @s[tag=graffiticanapply] graffititimer 1
tag @s remove graffiticanapply