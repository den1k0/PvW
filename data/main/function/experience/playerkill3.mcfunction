experience add @s 5 points
experience add @s[scores={doublexp=1..}] 5 points
scoreboard players add @s expcount 5
execute if data entity @s SelectedItem.components."minecraft:custom_data".souls run function main:experience/souladd
scoreboard players remove @s playerkill3 1