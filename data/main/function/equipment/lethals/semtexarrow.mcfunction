tag @s add semtex
scoreboard players add @s timer 1
execute as @s[scores={timer=1..}] run data modify entity @s pickup set value 0b
execute as @s[scores={timer=6}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.7 0.5 0
execute as @s[scores={timer=15}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.7 0.5 0
execute as @s[scores={timer=24..30}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.7 0.5 0
tag @s[scores={timer=30..}] add exploded

execute at @s[tag=exploded] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 20 normal
execute at @s[tag=exploded] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 0.7 0
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @e[distance=..2,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @e[distance=..3.25,type=!player] run damage @e[sort=nearest,limit=1] 9 minecraft:player_explosion by @s
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @e[distance=..4.5,type=!player] run damage @e[sort=nearest,limit=1] 6 minecraft:player_explosion by @s
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..2] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..3.25] run damage @p[gamemode=!spectator] 9 minecraft:player_explosion by @s
execute as @s[tag=exploded] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=exploded] playerid at @a[distance=..4.5] run damage @p[gamemode=!spectator] 6 minecraft:player_explosion by @s
execute as @s[tag=exploded] run kill @s