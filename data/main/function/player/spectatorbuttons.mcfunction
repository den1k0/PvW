execute unless score @s spectatortemp matches 1.. run tag @s add spectatormisc
scoreboard players set @s[tag=spectatormisc] spectatortemp 1
scoreboard players set @s[tag=spectatormisc] actionbarwait 30
tag @s remove spectatormisc
execute at @s if entity @a[gamemode=!spectator,distance=..0.1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"jump":true}}}} run function main:player/spectatorchangeplayer
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"jump":false}}}} run tag @s remove spectatorstopchangeplayer