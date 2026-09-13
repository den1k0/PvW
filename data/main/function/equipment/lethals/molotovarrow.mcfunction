tag @s add molotoved
execute unless score @s temp matches 1.. run data modify entity @s pickup set value 0b
execute as @s[scores={temp=1}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1.5 0.7 0
scoreboard players add @s temp 1
execute if score @s temp matches 100.. run kill @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=molotoved] playerid at @e[distance=..2.5,type=!player] run damage @e[sort=nearest,limit=1] 3.5 minecraft:on_fire by @s
execute at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=molotoved] playerid at @a[distance=..2.5] run damage @p[gamemode=!spectator] 3.5 minecraft:on_fire by @s
execute at @s run particle minecraft:flame ~ ~ ~ 1 0.2 1 0 18 normal

execute if score @s temp matches 10 at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 0.5 0
execute if score @s temp matches 50 at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 0.5 0