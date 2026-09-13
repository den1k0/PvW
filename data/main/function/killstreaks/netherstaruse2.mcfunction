execute at @s[scores={netherstaruse=1..},team=piglin] run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] piglinnuke 1
execute at @s[scores={netherstaruse=1..},team=wither] run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] withernuke 1
execute at @s[scores={netherstaruse=1..}] run playsound minecraft:music_disc.tdmnukedroped master @a[distance=..1000] ~ ~ ~ 1 1 1
execute at @s[scores={netherstaruse=1..},team=piglin] run playsound minecraft:music_disc.tdmmilenemynuke voice @a[team=wither,distance=..1000] ~ ~ ~ 0.6 1 0.6
execute at @s[scores={netherstaruse=1..},team=piglin] run tellraw @a[distance=..1000] [{"text":"Piglins used ","bold":true,"color":"gold"},{"text":"NUKE!","bold":true,"color":"red"}]
execute at @s[scores={netherstaruse=1..},team=piglin] run playsound minecraft:music_disc.tdmabfriendlynuke voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.6 1 0.6
execute at @s[scores={netherstaruse=1..},team=wither] run playsound minecraft:music_disc.tdmabenemynuke voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.6 1 0.6
execute at @s[scores={netherstaruse=1..},team=wither] run tellraw @a[distance=..1000] [{"text":"Withers used ","bold":true,"color":"aqua"},{"text":"NUKE!","bold":true,"color":"red"}]
execute at @s[scores={netherstaruse=1..},team=wither] run playsound minecraft:music_disc.tdmmilfriendlynuke voice @a[team=wither,distance=..1000] ~ ~ ~ 0.6 1 0.6