tag @s add ksexploded
data modify entity @s pickup set value 0b
execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 20 normal
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 0.7 0
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @e[distance=..1.5,type=!player] run damage @e[sort=nearest,limit=1] 10 minecraft:player_explosion by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @e[distance=..2.5,type=!player] run damage @e[sort=nearest,limit=1] 8 minecraft:player_explosion by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @e[distance=..3.5,type=!player] run damage @e[sort=nearest,limit=1] 6 minecraft:player_explosion by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @a[distance=..1.5] run damage @p[gamemode=!spectator] 10 minecraft:player_explosion by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @a[distance=..2.5] run damage @p[gamemode=!spectator] 8 minecraft:player_explosion by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=ksexploded] playerid at @a[distance=..3.5] run damage @p[gamemode=!spectator] 6 minecraft:player_explosion by @s
kill @s