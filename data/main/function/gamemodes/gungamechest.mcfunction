execute at @s store result score @s random run data get block ~ ~-3 ~ Items
scoreboard players remove @s random 1
execute at @s store result entity @s DeathTime short 1 run scoreboard players get @s random
$execute store result entity @s HurtByTimestamp int 1 run random value 0..$(DeathTime)

$execute at @s run data modify entity @s HandItems[0] set from block ~ ~-3 ~ Items[$(HurtByTimestamp)]
$execute at @s run data modify block ~ ~-3 ~ Items[$(HurtByTimestamp)] set value {}

execute store result entity @s DisabledSlots int 1 run scoreboard players get @s count
$execute at @s run item replace block ~ ~-2 ~ container.$(DisabledSlots) from entity @s weapon.mainhand
scoreboard players add @s count 1

execute if score @s count matches ..13 run function main:gamemodes/gungamechest with entity @s