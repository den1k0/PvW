execute as @e[type=block_display,tag=phbdar] run function main:items/phbdar

execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data{dontdrop:1b} run data modify entity @s PickupDelay set value 0s
execute as @e[type=item] if data entity @s[tag=!itemdropped] {Age:1s} run function main:items/itemdroppedsound

execute as @e[type=fishing_bobber] run function main:items/fishingbobber

execute as @e[type=arrow,tag=ballistarrow] run function main:items/ballistarrow