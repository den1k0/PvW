clear @a[] minecraft:trident[minecraft:damage=249]
execute at @e[type=minecraft:trident,nbt={inGround:1b}] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 20 normal
execute at @e[type=minecraft:trident] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 normal
kill @e[type=minecraft:trident,nbt={inGround:1b}]

execute as @e[tag=creeper,tag=creeperpiglin] run team join piglin @s
execute as @e[tag=creeper,tag=creeperwither] run team join wither @s
execute as @e[tag=creeperpiglin] at @s if entity @a[team=wither,distance=..3,gamemode=!spectator] run data modify entity @s ignited set value 1b
execute as @e[tag=creeperwither] at @s if entity @a[team=piglin,distance=..3,gamemode=!spectator] run data modify entity @s ignited set value 1b
scoreboard players add @e[tag=creeper] temp 1
kill @e[tag=creeper,type=minecraft:creeper,scores={temp=600..}]
execute as @e[tag=creeper,nbt={ignited:1b}] run scoreboard players add @s temp2 1
execute as @e[tag=creeper,scores={temp2=24}] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0 10 normal
execute as @e[tag=creeper,scores={temp2=24}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7 0
execute as @e[tag=creeper,scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=creeper] playerid at @a[distance=..2.25] run damage @p[gamemode=!spectator] 20 minecraft:player_explosion by @s
execute as @e[tag=creeper,scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=creeper] playerid at @a[distance=..4.5] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @e[tag=creeper,scores={temp=1}] at @s run scoreboard players operation @s playerid = @p[scores={creeperspawnegg=1..}] playerid
kill @e[tag=creeper,type=minecraft:creeper,scores={temp2=24..}]
execute at @e[tag=creeperwither] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.75 ~ 0.2 0.35 0.2 0 1 normal
execute at @e[tag=creeperpiglin] run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.75 ~ 0.2 0.35 0.2 0 1 normal
#execute unless block -309 72 291 minecraft:air as @e[tag=creeper] at @s as @a[distance=..3] unless score @s playerid = @e[limit=1,sort=nearest,tag=creeper] playerid run data modify entity @e[limit=1,sort=nearest,tag=creeper] ignited set value 1b
scoreboard players reset @a creeperspawnegg

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:7083032}}},inGround:1b},tag=!molotoved] run tag @s add molotoved
execute as @e[tag=molotoved] run data modify entity @s pickup set value 0b
execute as @e[tag=molotoved,scores={temp=1}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1.5 0.7 0
execute as @e[tag=molotoved] run scoreboard players add @s temp 1
execute as @e[tag=molotoved] if score @s temp matches 100.. run kill @s
execute as @e[tag=molotoved] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=molotoved] playerid at @a[distance=..2.5] run damage @p[gamemode=!spectator] 3.5 minecraft:on_fire by @s
execute at @e[tag=molotoved] run particle minecraft:flame ~ ~ ~ 1 0.2 1 0 18 normal

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:3684408}}},inGround:1b},tag=!drilling] run tag @s add drilling
scoreboard players add @e[tag=drilling] temp 1
execute as @e[tag=drilling] run data modify entity @s pickup set value 0b
execute at @e[tag=drilling,scores={temp=1..20}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 0.5 0
execute at @e[tag=drilling] run particle minecraft:block{block_state:"minecraft:gravel"} ~ ~ ~ 0.2 0.2 0.2 0 2 normal
execute at @e[tag=drilling,scores={temp=1}] run playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 0.5 0
execute at @e[tag=drilling,scores={temp=60}] run summon minecraft:marker ~ ~ ~ {Tags:["drilled"]}
scoreboard players add @e[tag=drilled] temp 1
execute as @e[tag=drilled,scores={temp=1}] at @s rotated as @e[tag=drilling,distance=..0,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=drilled,scores={temp=1}] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute as @e[tag=drilled,scores={temp=1}] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute as @e[tag=drilled] at @s run scoreboard players operation @s playerid = @e[sort=nearest,limit=1,tag=drilling] playerid
execute as @e[tag=drilled,scores={temp=1}] at @s run kill @e[tag=drilling,distance=..0]
execute as @e[tag=drilled] at @s run tp @s ^ ^ ^2.5
execute as @e[tag=drilled] at @s run particle minecraft:explosion ^ ^ ^ 0.6 0.6 0.6 0 6 normal
execute as @e[tag=drilled] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=drilled] playerid at @a[distance=..3] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @e[tag=drilled] at @s run playsound minecraft:entity.generic.explode master @a ^ ^ ^ 1 0.7 0
execute as @e[tag=drilled,scores={temp=3..}] run kill @s

execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:11161680}}] run tag @s add grenadeexplode
execute as @e[tag=potionid] at @s unless entity @e[tag=grenadeexplode,distance=..1] run kill @s
execute as @e[tag=grenadeexplode] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 8 normal
execute as @e[tag=grenadeexplode] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7 0
execute as @e[tag=grenadeexplode] at @s run scoreboard players operation @s playerid = @e[limit=1,sort=nearest,tag=potionid] playerid
execute as @e[tag=grenadeexplode] at @s positioned ~ ~-1 ~ as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=grenadeexplode] playerid at @a[distance=..1.5] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @e[tag=grenadeexplode] at @s positioned ~ ~-1 ~ as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=grenadeexplode] playerid at @a[distance=..2.5] run damage @p[gamemode=!spectator] 9 minecraft:player_explosion by @s
execute as @e[tag=grenadeexplode] at @s positioned ~ ~-1 ~ as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=grenadeexplode] playerid at @a[distance=..3.5] run damage @p[gamemode=!spectator] 6 minecraft:player_explosion by @s
execute at @e[type=minecraft:potion] run summon minecraft:marker ~ ~ ~ {Tags:["potionid"]}
execute as @e[tag=potionid] at @s run scoreboard players operation @s playerid = @e[limit=1,sort=nearest,type=potion] playerid
kill @e[tag=grenadeexplode]

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:4281871}}},inGround:1b}] run tag @s add exploded
execute at @e[tag=exploded] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 20 normal
execute at @e[tag=exploded] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 0.7 0
execute as @e[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..1.5] run damage @p[gamemode=!spectator] 10 minecraft:player_explosion by @s
execute as @e[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..2.5] run damage @p[gamemode=!spectator] 8 minecraft:player_explosion by @s
execute as @e[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..3.5] run damage @p[gamemode=!spectator] 6 minecraft:player_explosion by @s
execute as @e[tag=exploded] run kill @s