execute as @e[type=minecraft:arrow,tag=!assignteam,tag=!arrowteam] if data entity @s item.components.minecraft:potion_contents.custom_color run tag @s add assignteam
execute as @e[type=minecraft:splash_potion,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[type=minecraft:lingering_potion,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[type=minecraft:trident,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[type=minecraft:snowball,tag=!assignteam,tag=!arrowteam] run tag @s add assignteam
execute as @e[tag=assignteam] run function main:projectiles/assignteam

execute as @e[type=#minecraft:impact_projectiles] run function main:projectiles/impactprojectiles

execute as @e[tag=markerarrow] run function main:projectiles/markerarrow

execute as @e[type=arrow,tag=hsdmg] run function main:projectiles/hsdmg

execute as @e[type=minecraft:arrow,tag=!inground] if data entity @s {inGround:1b} at @s run particle minecraft:white_smoke ~ ~ ~ 0 0 0 0.02 6 normal
execute as @e[type=#minecraft:impact_projectiles,tag=!inground] if data entity @s {inGround:1b} run tag @s add inground

execute as @e[type=#minecraft:impact_projectiles,tag=hsdmg,tag=!inground] at @s positioned ~ ~-1.625 ~ run tag @a[distance=..4] add playerhsme
execute as @e[type=minecraft:trident,tag=hsdmg] run data modify entity @s item.components.minecraft:enchantments.minecraft:sharpness set value 36
#execute as @e[type=minecraft:trident,tag=hsdmg,tag=arrowteamwither] run data modify entity @s item.components.minecraft:enchantments.levels.minecraft:sharpness set value 63

execute as @e[type=#minecraft:impact_projectiles] at @s unless entity @a[distance=..128] run kill @s
execute as @e[tag=!pickup2bkill,type=arrow,tag=inground,nbt={pickup:2b}] run tag @s add pickup2bkill
scoreboard players add @e[tag=pickup2bkill] temp2 1
kill @e[tag=pickup2bkill,scores={temp2=400..}]

execute as @e[type=small_fireball] run function main:projectiles/smallfireball
execute as @e[tag=clearfire] run function main:projectiles/clearfire

execute as @e[tag=bouncearrow] run function main:factions/bouncearrow
execute as @e[tag=motionmedium,tag=!motionadded] run function main:factions/motionmedium
execute as @e[tag=motionclose,tag=!motionadded] run function main:factions/motionclose