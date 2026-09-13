$execute at @s store result score @n[tag=itemtostorage] random run data get storage minecraft:pvw player.$(id).stash
$execute at @s store result score @n[tag=itemtostorage] count run data get storage minecraft:pvw player.$(id).stash

execute at @s if score @n[tag=itemtostorage] count matches 1.. run scoreboard players remove @n[tag=itemtostorage] count 1
execute at @s if score @n[tag=itemtostorage] random matches 1.. run scoreboard players remove @n[tag=itemtostorage] random 1

execute if score @s storagefreeslot matches 0.. store result score @n[tag=itemtostorage] random at @s run scoreboard players get @s storagefreeslot 

execute at @s if score @n[tag=itemtostorage] random matches 24.. run scoreboard players remove @n[tag=itemtostorage] random 24
execute at @s if score @n[tag=itemtostorage] random matches 24.. run scoreboard players remove @n[tag=itemtostorage] random 24
execute at @s if score @n[tag=itemtostorage] random matches 24.. run scoreboard players remove @n[tag=itemtostorage] random 24
execute at @s if score @n[tag=itemtostorage] random matches 8.. run scoreboard players add @n[tag=itemtostorage] random 1
execute at @s if score @n[tag=itemtostorage] random matches 17.. run scoreboard players add @n[tag=itemtostorage] random 1

execute at @s store result entity @n[tag=itemtostorage] data.count int 1 run scoreboard players get @n[tag=itemtostorage] random
execute at @s store result entity @n[tag=itemtostorage] data.elementid int 1 run scoreboard players get @n[tag=itemtostorage] count