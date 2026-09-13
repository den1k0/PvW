$execute store result score @s count run data get storage minecraft:pvw player.$(id).stash
execute if score @s count matches 96.. run tag @s add storagefull
execute if score @s count matches 96.. run tellraw @s [{"text":"Storage is full! Item Deleted.","color":"red","italic":false}]
$execute at @s[tag=!storagefull] run data modify storage minecraft:pvw player.$(id).stash append from entity @n[tag=caseitemmodifier] equipment.mainhand