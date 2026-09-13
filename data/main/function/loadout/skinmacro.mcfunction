$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:dyed_color" set from storage pvw player.$(id).stash[$(count)].components."minecraft:dyed_color"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:item_model" set from storage pvw player.$(id).stash[$(count)].components."minecraft:item_model"
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:tooltip_display" set from storage pvw player.$(id).stash[$(count)].components."minecraft:tooltip_display"

execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append value ""
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[0]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[1]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[2]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[3]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:lore" append from storage pvw player.$(id).stash[$(count)].components."minecraft:lore"[4]

execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" | ","color":"white","italic":false}
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[1]
$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:custom_name".extra append from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_name".extra[2]

$execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:custom_data" set from storage pvw player.$(id).stash[$(count)].components."minecraft:custom_data"