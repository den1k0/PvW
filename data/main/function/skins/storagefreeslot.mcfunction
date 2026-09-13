execute at @s run summon marker ~ ~ ~ {Tags:["storagefreeslotmarker"]}
execute at @s store result entity @n[tag=storagefreeslotmarker] data.id int 1 run scoreboard players get @s playerid
execute at @s run scoreboard players set @n[tag=storagefreeslotmarker] count 0
execute at @s store result entity @n[tag=storagefreeslotmarker] data.elementid int 1 run scoreboard players get @n[tag=storagefreeslotmarker] count
execute at @s run function main:skins/storagefreeslotmacro with entity @n[tag=storagefreeslotmarker] data
execute at @s run kill @n[tag=storagefreeslotmarker]