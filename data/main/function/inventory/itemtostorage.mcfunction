execute at @s run summon marker ~ ~1.5 ~ {Tags:["itemtostorage"]}
execute at @s store result entity @n[tag=itemtostorage] data.id int 1 run scoreboard players get @s playerid

execute at @s run function main:skins/storagefreeslot
execute at @s if score @s storagefreeslot matches 0.. store result entity @n[tag=itemtostorage] data.freeslot int 1 run scoreboard players get @s storagefreeslot

execute at @s unless score @s storagefreeslot matches 0.. run function main:inventory/storageitemmacro with entity @n[tag=itemtostorage] data
execute at @s if score @s storagefreeslot matches 0.. run function main:inventory/storagefreeslotitemmacro with entity @n[tag=itemtostorage] data
execute at @s[tag=!storagefull] run function main:inventory/itemcountmacro with entity @n[tag=itemtostorage] data
execute at @s[tag=!storagefull] unless score @s storagefreeslot matches 0.. run function main:inventory/slotmacro with entity @n[tag=itemtostorage] data
execute at @s[tag=!storagefull] if score @s storagefreeslot matches 0.. run function main:inventory/storagefreeslotmacro with entity @n[tag=itemtostorage] data
execute at @s run kill @n[tag=itemtostorage]
tag @s remove storagefull