tag @s add smoked
execute at @s run effect give @a[distance=..3.25,gamemode=!spectator] minecraft:blindness 2 0 true
execute at @s run effect give @a[distance=..3.25,gamemode=!spectator] minecraft:slowness 1 1 true
execute as @s unless score @s temp matches 1.. run data modify entity @s pickup set value 0b
scoreboard players add @s temp 1
execute as @s[scores={temp=1}] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1.5 0.7 0
execute if score @s temp matches 190.. run kill @s
execute at @s run particle block_marker{block_state:"minecraft:light_gray_concrete"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal
execute at @s run particle block_marker{block_state:"minecraft:black_concrete"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal