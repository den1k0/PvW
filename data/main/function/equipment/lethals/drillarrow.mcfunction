tag @s[type=arrow] add drilling
scoreboard players add @s[type=arrow] temp 1
execute as @s[type=arrow,scores={temp=1}] run data modify entity @s pickup set value 0b
execute at @s[tag=drilling,scores={temp=1..20}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 0.5 0
execute at @s[tag=drilling] run particle minecraft:block{block_state:"minecraft:gravel"} ~ ~ ~ 0.2 0.2 0.2 0 2 normal
execute at @s[tag=drilling,scores={temp=1}] run playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 0.5 0
execute at @s[tag=drilling,scores={temp=60}] run summon minecraft:marker ~ ~ ~ {Tags:["drilled"]}
scoreboard players add @s[tag=drilled] temp 1
execute as @s[tag=drilled,scores={temp=1}] at @s rotated as @e[tag=drilling,distance=..0,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @s[tag=drilled,scores={temp=1}] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute as @s[tag=drilled,scores={temp=1}] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute as @s[tag=drilled] at @s run scoreboard players operation @s playerid = @e[sort=nearest,limit=1,tag=drilling] playerid
execute as @s[tag=drilled,scores={temp=1}] at @s run kill @e[tag=drilling,distance=..0]
execute as @s[tag=drilled] at @s run tp @s ^ ^ ^2.5
execute as @s[tag=drilled] at @s run particle minecraft:explosion ^ ^ ^ 0.6 0.6 0.6 0 6 normal
execute as @s[tag=drilled] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=drilled] playerid at @e[distance=..3,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute as @s[tag=drilled] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=drilled] playerid at @a[distance=..3] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @s[tag=drilled] at @s run playsound minecraft:entity.generic.explode master @a ^ ^ ^ 1 0.7 0
execute as @s[tag=drilled,scores={temp=3..}] run kill @s