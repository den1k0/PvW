tag @s remove hsdmg

execute as @s[type=minecraft:arrow] store result score @s arrowdmg run data get entity @s damage 10
execute as @s[type=minecraft:arrow] unless score @s timer matches 0.. store result score @s timer2 run data get entity @s damage 10
execute as @s[type=minecraft:arrow,tag=!ballistarrow] store result entity @s damage double 0.1 run scoreboard players get @s timer2

execute as @s store result score @s arrowrot run data get entity @s Rotation[0]
execute as @s[tag=!inground,scores={timer=1..}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["markerarrow"]}
execute as @s[tag=!inground] at @s run tp @e[tag=markerrot,sort=nearest,limit=1,distance=..0.1] ~ ~ ~ ~ ~
execute as @s[tag=!inground] at @s store result entity @e[tag=markerarrow,limit=1,sort=nearest,distance=..0.1] Rotation[0] float -1 run scoreboard players get @s arrowrot
execute as @s store result score @s arrowrot2 run data get entity @s Rotation[1]
execute as @s[tag=!inground] at @s store result entity @e[tag=markerarrow,limit=1,sort=nearest,distance=..0.1] Rotation[1] float -1 run scoreboard players get @s arrowrot2

scoreboard players add @s[tag=!inground] timer 1

execute as @s[type=arrow,tag=!inground] run function main:projectiles/arrowparticles