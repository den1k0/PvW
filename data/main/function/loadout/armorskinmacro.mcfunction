$execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:trim" set from storage pvw player.$(id).stash[$(count)].components."minecraft:trim"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:trim" set from storage pvw player.$(id).stash[$(count)].components."minecraft:trim"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:trim" set from storage pvw player.$(id).stash[$(count)].components."minecraft:trim"

execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:lore" append value ""
$execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[0]
execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:lore" append value ""
$execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[0]
execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:lore" append value ""
$execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[0]

$execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:custom_data" set from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_data"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:custom_data" set from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_data"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:custom_data" set from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_data"

execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:custom_name".extra append value {"text":" | ","color":"white","italic":false}
$execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[2]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.chest.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[3]
execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:custom_name".extra append value {"text":" | ","color":"white","italic":false}
$execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[2]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.legs.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[3]
execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:custom_name".extra append value {"text":" | ","color":"white","italic":false}
$execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[2]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.feet.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[3]