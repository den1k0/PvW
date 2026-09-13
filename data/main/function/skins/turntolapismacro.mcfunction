$data modify storage minecraft:pvw player.$(id).stash[$(elementid)].id set value "minecraft:stone"
$data remove storage minecraft:pvw player.$(id).stash[$(elementid)].components."minecraft:lore"
$data modify storage minecraft:pvw player.$(id).stash[$(elementid)].components."minecraft:custom_data".deleteditem set value 1b
$data remove storage minecraft:pvw player.$(id).stash[$(elementid)].components."minecraft:custom_data".souls