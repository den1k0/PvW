execute store result score @s posx run data get entity @s Motion[0] 1000
execute store result score @s posy run data get entity @s Motion[1] 1000
execute store result score @s posz run data get entity @s Motion[2] 1000

execute store result entity @s Motion[0] double 0.000666 run scoreboard players get @s posx
execute store result entity @s Motion[1] double 0.000666 run scoreboard players get @s posy
execute store result entity @s Motion[2] double 0.000666 run scoreboard players get @s posz

tag @s add motionadded