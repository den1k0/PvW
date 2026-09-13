$execute if data storage pvw player.$(id).stash[$(elementid)].components."minecraft:custom_data".deleteditem run tag @s add storagefreeslotfound
$execute at @s[tag=storagefreeslotfound] run scoreboard players set @s storagefreeslot $(elementid)
execute at @s[tag=!storagefreeslotfound] run scoreboard players add @n[tag=storagefreeslotmarker] count 1
execute at @s[tag=!storagefreeslotfound] store result entity @n[tag=storagefreeslotmarker] data.elementid int 1 run scoreboard players get @n[tag=storagefreeslotmarker] count
execute at @s[tag=!storagefreeslotfound] unless score @n[tag=storagefreeslotmarker] count matches 96.. run function main:skins/storagefreeslotmacro with entity @n[tag=storagefreeslotmarker] data
execute at @s[tag=!storagefreeslotfound] if score @n[tag=storagefreeslotmarker] count matches 96.. run scoreboard players set @s storagefreeslot -1
tag @s remove storagefreeslotfound