execute as @s[tag=gunshiptntinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
execute as @s[tag=gunshiptntinit] run data modify entity @s teleport_duration set value 1
tag @s remove gunshiptntinit

execute at @s if block ~ ~-0.5 ~ #air run tp @s ~ ~-0.5 ~
execute at @s unless block ~ ~-0.5 ~ #air run tag @s add gunshiptntexplode
scoreboard players add @s temp 1
execute if score @s temp matches 80.. run tag @s add gunshiptntexplode
execute at @s run particle smoke ~ ~0.5 ~ 0.3 0.3 0.3 0 2 normal

execute at @s[tag=gunshiptntexplode] run particle explosion ~ ~0.5 ~ 1 1 1 0 20 normal
execute at @s[tag=gunshiptntexplode] run playsound entity.generic.explode master @a ~ ~ ~ 1.5 0.7 0
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @e[distance=..2,type=!player] run damage @e[sort=nearest,limit=1] 16 minecraft:player_explosion by @s
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @e[distance=..4,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @e[distance=..6,type=!player] run damage @e[sort=nearest,limit=1] 8 minecraft:player_explosion by @s
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @a[distance=..2] run damage @p[gamemode=!spectator] 16 minecraft:player_explosion by @s
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @a[distance=..4] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute at @s[tag=gunshiptntexplode] as @a[distance=..1000] if score @s playerid = @n[tag=gunshiptntexplode] playerid at @a[distance=..6] run damage @p[gamemode=!spectator] 8 minecraft:player_explosion by @s
kill @s[tag=gunshiptntexplode]