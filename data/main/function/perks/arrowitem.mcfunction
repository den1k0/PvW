execute at @s if data entity @s item{id:"minecraft:arrow"} run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:arrow",count:1}}
execute at @s if data entity @s item{id:"minecraft:tipped_arrow"} run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1}}
execute at @s if data entity @s item{id:"minecraft:tipped_arrow"} run data modify entity @n[type=item] Item set from entity @s item
kill @s