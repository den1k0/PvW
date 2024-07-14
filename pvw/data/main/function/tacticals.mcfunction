execute as @a[scores={goathornuse=1..}] run clear @s minecraft:goat_horn 1
execute as @a[scores={goathornuse=1..}] run effect give @s minecraft:regeneration 10 0 true
execute as @a[scores={goathornuse=1..}] at @s run particle minecraft:heart ~ ~1 ~ 1.5 1 1.5 0 16 normal
scoreboard players reset @a[scores={goathornuse=1..}] goathornuse

execute as @e[type=minecraft:arrow,tag=!smoked,nbt={item:{components:{"minecraft:potion_contents":{custom_color:1646884}}},inGround:1b}] run tag @s add smoked
execute at @e[tag=smoked] run effect give @a[distance=..3,gamemode=!spectator] minecraft:blindness 2 0 true
execute as @e[tag=smoked] run data modify entity @s pickup set value 0b
execute as @e[tag=smoked] run scoreboard players add @s temp 1
execute as @e[tag=smoked,scores={temp=1}] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1.5 0.7 0
execute as @e[tag=smoked] if score @s temp matches 200.. run kill @s
execute at @e[tag=smoked] run particle block_marker{block_state:"minecraft:light_gray_concrete"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal
execute at @e[tag=smoked] run particle block_marker{block_state:"minecraft:black_concrete"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal

execute as @e[type=minecraft:snowball] at @s unless entity @e[tag=snowball,distance=..0.25] run summon minecraft:marker ~ ~ ~ {Tags:["snowball"]}
execute as @e[tag=snowball] at @s run ride @s mount @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..0.25]
execute as @e[tag=snowball] at @s unless entity @e[type=minecraft:snowball,distance=..0.25] run tag @s add snowballfreeze
execute as @e[tag=snowballfreeze] at @s run particle minecraft:block{block_state:"minecraft:snow_block"} ~ ~0.25 ~ 1.45 1.45 1.45 0 2 normal
execute as @e[tag=snowballfreeze] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0 8 normal
execute as @e[tag=snowballfreeze] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.4 2 0
execute as @e[tag=snowballfreeze] at @s run effect give @a[distance=..4] minecraft:slowness 5 2 false
execute as @e[tag=snowballfreeze] at @s run effect give @a[distance=..4] minecraft:mining_fatigue 5 2 false
execute as @e[tag=snowballfreeze] run kill @s

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:15988471}}},inGround:1b}] run tag @s add flashed
execute at @e[tag=flashed] run effect give @a[distance=..5,gamemode=!spectator] minecraft:blindness 4 0 true
execute as @e[tag=flashed] at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1.5 0.7 0
execute at @e[tag=flashed] run particle minecraft:flash ~ ~ ~ 1 1 1 0 50 normal
execute as @e[tag=flashed] run kill @s

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:14929226}}},inGround:1b},tag=!radared] run tag @s add radared
execute as @e[tag=radared] run scoreboard players add @s temp 1
execute as @e[tag=radared] run data modify entity @s pickup set value 0b
execute as @e[tag=radared,scores={temp=1}] at @s run playsound minecraft:music_disc.iiradarone master @a ~ ~ ~ 1.5 1 0
execute at @e[tag=radared] run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.9 0.9 0.9 0 6 normal
execute at @e[tag=radared,tag=arrowteamwither] run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 2 normal
execute at @e[tag=radared,tag=arrowteampiglin] run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 2 normal
execute as @e[tag=radared] if score @s temp matches 300.. run kill @s
execute as @e[tag=radared,tag=arrowteampiglin] at @s run effect give @a[distance=..6.5,team=wither,gamemode=!spectator] minecraft:glowing 1 0 true
execute as @e[tag=radared,tag=arrowteamwither] at @s run effect give @a[distance=..6.5,team=piglin,gamemode=!spectator] minecraft:glowing 1 0 true
#execute unless block -309 72 291 minecraft:air as @e[tag=radared] at @s as @a if score @s playerid = @e[tag=radared,sort=nearest,limit=1] playerid run tag @s add notradarpls
#execute unless block -309 72 291 minecraft:air as @e[tag=radared] at @s run effect give @a[distance=..6.5,gamemode=!spectator,tag=!notradarpls] minecraft:glowing 1 0 true
#tag @a remove notradarpls

execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:2981413}}] run tag @s add poisoned
execute as @e[type=minecraft:area_effect_cloud,tag=poisoned] run data modify entity @s Radius set value 3.5f
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=poisoned] temp 1
kill @e[type=minecraft:area_effect_cloud,tag=poisoned,scores={temp=45..}]
execute as @e[type=minecraft:area_effect_cloud,tag=poisoned,scores={temp=1}] at @s run playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 1 0.55 0
execute as @e[type=minecraft:area_effect_cloud,tag=poisoned,scores={temp=1}] at @s run particle minecraft:effect ~ ~ ~ 2 0.9 2 0 60 normal