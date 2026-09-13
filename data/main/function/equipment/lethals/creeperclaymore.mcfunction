execute at @s[tag=creeperpiglin] if entity @a[team=wither,distance=..3,gamemode=!spectator] run data modify entity @s ignited set value 1b
execute at @s[tag=creeperwither] if entity @a[team=piglin,distance=..3,gamemode=!spectator] run data modify entity @s ignited set value 1b
scoreboard players add @s temp 1
execute as @e[tag=creeper,scores={temp=1}] run tag @s add applygravity
kill @s[scores={temp=600..}]
execute as @s[nbt={ignited:1b}] run scoreboard players add @s temp2 1
execute as @s[scores={temp2=24}] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0 10 normal
execute as @s[scores={temp2=24}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7 0
execute as @s[scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @n[tag=creeper] playerid at @e[distance=0.01..2.25,type=!player] run damage @e[sort=nearest,limit=1] 20 minecraft:player_explosion by @s
execute as @s[scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @n[tag=creeper] playerid at @e[distance=0.01..4.5,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute as @s[scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @n[tag=creeper] playerid at @a[distance=..2.25] run damage @p[gamemode=!spectator] 20 minecraft:player_explosion by @s
execute as @s[scores={temp2=24..}] at @s as @a[distance=..1000] if score @s playerid = @n[tag=creeper] playerid at @a[distance=..4.5] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @s[scores={temp=1}] at @s run scoreboard players operation @s playerid = @p[scores={creeperspawnegg=1..}] playerid
kill @s[scores={temp2=24..}]
execute at @s[tag=creeperffa] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.75 ~ 0.2 0.35 0.2 0 1 normal
execute at @s[tag=creeperwither] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.75 ~ 0.2 0.35 0.2 0 1 normal
execute at @s[tag=creeperpiglin] run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.75 ~ 0.2 0.35 0.2 0 1 normal
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[distance=..3] unless score @s playerid = @n[tag=creeper] playerid run data modify entity @n[tag=creeper] ignited set value 1b
attribute @s[scores={temp=1}] scale base set 0.75