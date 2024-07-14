execute as @e[type=minecraft:arrow,tag=!assignteam,tag=!arrowteam] if data entity @s item.components.minecraft:potion_contents.custom_color run tag @s add assignteam
execute as @e[type=minecraft:potion,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[type=minecraft:trident,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[type=minecraft:snowball,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[tag=assignteam] at @s run scoreboard players operation @s playerid = @p[gamemode=!spectator] playerid
execute as @e[tag=assignteam] at @s as @a[gamemode=!spectator,sort=nearest,limit=1] if entity @s[team=wither] run tag @e[tag=assignteam,sort=nearest,limit=1] add arrowteamwither
execute as @e[tag=assignteam] at @s as @a[gamemode=!spectator,sort=nearest,limit=1] if entity @s[team=piglin] run tag @e[tag=assignteam,sort=nearest,limit=1] add arrowteampiglin
execute as @e[tag=assignteam] run tag @s add arrowteam
execute as @e[tag=assignteam] run tag @s remove assignteam

tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] remove hsdmg
execute as @e[type=minecraft:arrow] store result score @s arrowdmg run data get entity @s damage 10
execute as @e[type=minecraft:arrow] unless score @s timer matches 0.. store result score @s timer2 run data get entity @s damage 10
execute as @e[type=minecraft:arrow] store result entity @s damage double 0.1 run scoreboard players get @s timer2
execute as @e[type=#minecraft:impact_projectiles] store result score @s arrowrot run data get entity @s Rotation[0]
execute as @e[type=#minecraft:impact_projectiles,nbt=!{inGround:1b},scores={timer=1..}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["markerarrow"]}
execute as @e[type=#minecraft:impact_projectiles,nbt=!{inGround:1b}] at @s run tp @e[tag=markerrot,sort=nearest,limit=1,distance=..0.1] ~ ~ ~ ~ ~
execute as @e[type=#minecraft:impact_projectiles,nbt=!{inGround:1b}] at @s store result entity @e[tag=markerarrow,limit=1,sort=nearest,distance=..0.1] Rotation[0] float -1 run scoreboard players get @s arrowrot
execute as @e[type=#minecraft:impact_projectiles] store result score @s arrowrot2 run data get entity @s Rotation[1]
execute as @e[type=#minecraft:impact_projectiles,nbt=!{inGround:1b}] at @s store result entity @e[tag=markerarrow,limit=1,sort=nearest,distance=..0.1] Rotation[1] float -1 run scoreboard players get @s arrowrot2
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^0.5 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^0.5 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^1 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^1 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^1.5 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^1.5 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^2 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^2 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^2.5 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^2.5 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^3 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^3 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.875 ~ positioned ^ ^ ^3.5 if entity @a[distance=..0.6,scores={sneak=0}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
execute at @e[tag=markerarrow] positioned ~ ~-1.525 ~ positioned ^ ^ ^3.5 if entity @a[distance=..0.6,scores={sneak=1..}] run tag @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] add hsdmg
kill @e[tag=markerarrow]
scoreboard players add @e[type=#minecraft:impact_projectiles,nbt=!{inGround:1b}] timer 1
execute as @e[type=arrow,tag=hsdmg] if score @s arrowdmg matches 30.. run scoreboard players add @s arrowdmg 16
execute as @e[type=arrow,tag=hsdmg] if score @s arrowdmg matches ..29 run scoreboard players add @s arrowdmg 22
execute as @e[type=arrow,tag=hsdmg] if score @s arrowdmg matches 47.. run scoreboard players set @s arrowdmg 46
execute as @e[type=minecraft:arrow,tag=hsdmg] store result entity @s damage double 0.1 run scoreboard players get @s arrowdmg
execute as @e[type=#minecraft:impact_projectiles,tag=hsdmg] at @s positioned ~ ~-1.625 ~ run tag @a[distance=..4] add playerhsme
execute as @e[type=minecraft:trident,tag=hsdmg] run data modify entity @s item.components.minecraft:enchantments.levels.minecraft:sharpness set value 36
#execute as @e[type=minecraft:trident,tag=hsdmg,tag=arrowteamwither] run data modify entity @s item.components.minecraft:enchantments.levels.minecraft:sharpness set value 63