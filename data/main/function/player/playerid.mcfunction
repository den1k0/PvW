scoreboard players set #global number 0
execute as @a store success score #global number unless score @s playerid matches 1.. run scoreboard players operation @s playerid = #global playerid
execute if score #global number matches 1 run scoreboard players add #global playerid 1