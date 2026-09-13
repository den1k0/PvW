execute at @s run summon armor_stand ~ ~ ~ {Tags:["souladder"],NoGravity:1b,Invisible:1b,Small:1b,Silent:1b}
execute at @s store result entity @n[tag=souladder] data.id int 1 run scoreboard players get @s playerid
execute at @s store result entity @n[tag=souladder] data.elementid int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".elementid
execute at @s store result score @n[tag=souladder] count run data get entity @s SelectedItem.components."minecraft:custom_data".souls
execute at @s run data modify entity @n[tag=souladder] equipment.mainhand set from entity @s SelectedItem

execute at @s run scoreboard players add @n[tag=souladder] count 1
execute at @s store result entity @n[tag=souladder] equipment.mainhand.components."minecraft:custom_data".souls int 1 run scoreboard players get @n[tag=souladder] count
execute at @s run data modify entity @n[tag=souladder] equipment.mainhand.components."minecraft:lore"[-1].extra[0].text set string entity @n[tag=souladder] equipment.mainhand.components."minecraft:custom_data".souls

execute at @s run function main:experience/soulmacro with entity @n[tag=souladder] data

execute at @s run item replace entity @s weapon.mainhand from entity @n[tag=souladder] weapon.mainhand
execute at @s run kill @n[tag=souladder]

execute at @s run particle minecraft:witch ~ ~0.75 ~ 0.2 0.4 0.2 1 32 normal
execute at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~1 ~ 0.375 1.2 0