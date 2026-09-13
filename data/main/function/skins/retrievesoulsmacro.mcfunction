$data modify storage minecraft:pvw player.$(id).stash[$(elementid)].components."minecraft:custom_data".souls set value 0
$data modify storage minecraft:pvw player.$(id).stash[$(elementid)].components."minecraft:lore"[-1].extra[0].text set value "0"
$execute at @s run data modify entity @n[tag=retriever] equipment.mainhand set from storage minecraft:pvw player.$(id).stash[$(elementid)]
execute at @s run item replace entity @s enderchest.17 from entity @n[tag=retriever] weapon.mainhand