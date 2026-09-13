execute as @s[tag=mpas,scores={piglinuav=1}] at @s run playsound minecraft:music_disc.tdmmilenemyuav voice @a[team=wither,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=mpas,scores={piglinuav=1}] at @s run tellraw @a[distance=..1000] [{"text":"Piglins used ","bold":true,"color":"gold"},{"text":"UAV!","bold":true,"color":"yellow"}]
execute as @s[tag=mpas,scores={piglinuav=1}] at @s run playsound minecraft:music_disc.tdmabouruavonline voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=mpas,scores={witheruav=1}] at @s run playsound minecraft:music_disc.tdmabenemyuav voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=mpas,scores={witheruav=1}] at @s run tellraw @a[distance=..1000] [{"text":"Withers used ","bold":true,"color":"aqua"},{"text":"UAV!","bold":true,"color":"yellow"}]
execute as @s[tag=mpas,scores={witheruav=1}] at @s run playsound minecraft:music_disc.tdmmiluavonline voice @a[team=wither,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=mpas,scores={piglinuav=1..}] at @s run effect give @a[team=wither,distance=..1000] glowing 1 0 true
execute as @s[tag=mpas,scores={witheruav=1..}] at @s run effect give @a[team=piglin,distance=..1000] glowing 1 0 true
scoreboard players add @s[tag=mpas,scores={piglinuav=1..}] piglinuav 1
scoreboard players add @s[tag=mpas,scores={witheruav=1..}] witheruav 1
scoreboard players reset @s[tag=mpas,scores={piglinuav=400..}] piglinuav
scoreboard players reset @s[tag=mpas,scores={witheruav=400..}] witheruav