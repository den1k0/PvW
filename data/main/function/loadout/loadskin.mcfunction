execute at @s run summon armor_stand ~ ~ ~ {Tags:["skinchanger"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b}
execute at @s run item replace entity @n[tag=skinchanger] armor.chest from entity @s armor.chest
execute at @s run item replace entity @n[tag=skinchanger] armor.legs from entity @s armor.legs
execute at @s run item replace entity @n[tag=skinchanger] armor.feet from entity @s armor.feet
execute at @s run item replace entity @n[tag=skinchanger] weapon.mainhand from entity @s hotbar.0
execute as @e[tag=skinchanger] run data modify entity @s equipment.chest.components."minecraft:trim" set value {material:"minecraft:quartz",pattern:"minecraft:raiser"}
execute as @e[tag=skinchanger] run data modify entity @s equipment.legs.components."minecraft:trim" set value {material:"minecraft:quartz",pattern:"minecraft:raiser"}
execute as @e[tag=skinchanger] run data modify entity @s equipment.feet.components."minecraft:trim" set value {material:"minecraft:quartz",pattern:"minecraft:raiser"}

execute at @s[scores={classslot3=1}] run scoreboard players operation @n[tag=skinchanger] count = @s ironarmorskin
execute at @s[scores={classslot3=2}] run scoreboard players operation @n[tag=skinchanger] count = @s netheritearmorskin
execute at @s[scores={classslot3=3}] run scoreboard players operation @n[tag=skinchanger] count = @s chainmailarmorskin

execute at @s unless score @n[tag=skinchanger] count matches 0.. run data remove entity @n[tag=skinchanger] equipment.chest.components."minecraft:trim"
execute at @s unless score @n[tag=skinchanger] count matches 0.. run data remove entity @n[tag=skinchanger] equipment.legs.components."minecraft:trim"
execute at @s unless score @n[tag=skinchanger] count matches 0.. run data remove entity @n[tag=skinchanger] equipment.feet.components."minecraft:trim"

execute at @s store result entity @n[tag=skinchanger] data.count int 1 run scoreboard players get @n[tag=skinchanger] count
execute at @s store result entity @n[tag=skinchanger] data.id int 1 run scoreboard players get @s playerid
execute at @s if score @n[tag=skinchanger] count matches 0.. run function main:loadout/armorskinmacro with entity @n[tag=skinchanger] data

execute at @s run scoreboard players reset @n[tag=skinchanger]

execute at @s[scores={classslot1=1}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary1
execute at @s[scores={classslot1=2}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary2
execute at @s[scores={classslot1=3}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary3
execute at @s[scores={classslot1=4}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary4
execute at @s[scores={classslot1=5}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary5
execute at @s[scores={classslot1=6}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary6
execute at @s[scores={classslot1=7}] run scoreboard players operation @n[tag=skinchanger] count = @s weaponskinslotprimary7

execute at @s store result entity @n[tag=skinchanger] data.count int 1 run scoreboard players get @n[tag=skinchanger] count
execute at @s if score @n[tag=skinchanger] count matches 0.. run function main:loadout/skinmacro with entity @n[tag=skinchanger] data

execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:tooltip_display".hidden_components append value "attribute_modifiers"
execute at @s run data modify entity @n[tag=skinchanger] equipment.mainhand.components."minecraft:tooltip_display".hidden_components append value "unbreakable"

item replace entity @s armor.chest from entity @n[tag=skinchanger] armor.chest
item replace entity @s armor.legs from entity @n[tag=skinchanger] armor.legs
item replace entity @s armor.feet from entity @n[tag=skinchanger] armor.feet
execute unless score @s classslot11 matches 7 run item replace entity @s hotbar.0 from entity @n[tag=skinchanger] weapon.mainhand

tag @s remove loadskinme
tag @s remove loadskin
kill @e[tag=skinchanger]