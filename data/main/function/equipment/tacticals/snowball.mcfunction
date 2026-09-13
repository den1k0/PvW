execute at @s[tag=!snowball] unless entity @e[tag=snowball,distance=..0.375] run summon minecraft:marker ~ ~ ~ {Tags:["snowball"]}
execute as @e[tag=snowball] at @s run ride @s mount @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..0.375]
execute as @e[tag=snowball] at @s unless entity @e[type=minecraft:snowball,distance=..0.375] run tag @s add snowballfreeze
execute at @s[tag=snowballfreeze] run particle minecraft:block{block_state:"minecraft:snow_block"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal
execute at @s[tag=snowballfreeze] run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0 8 normal
execute at @s[tag=snowballfreeze] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.4 2 0
execute at @s[tag=snowballfreeze] run effect give @a[distance=..4] minecraft:slowness 5 2 false
execute at @s[tag=snowballfreeze] run effect give @a[distance=..4] minecraft:mining_fatigue 5 2 false
kill @s[tag=snowballfreeze]