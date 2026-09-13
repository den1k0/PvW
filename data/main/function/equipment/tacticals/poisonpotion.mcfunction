tag @s add poisoned
data modify entity @s Radius set value 3.5f
scoreboard players add @s temp 1
kill @s[scores={temp=45..}]
execute at @s[scores={temp=1}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.55 0
execute at @s[scores={temp=1}] run particle minecraft:effect ~ ~ ~ 2 0.9 2 0 60 normal
