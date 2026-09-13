execute store result score @s random run random value 1..6
execute store result score @s[tag=matchrewardpls] random run random value 1..3
tag @s remove matchrewardpls

execute if score @s random matches 2..3 run function main:skins/itemdrop
execute if score @s random matches 1 run function main:skins/casedrop

tag @s remove matchreward