data modify storage pvw time set string block 0 -2 0 LastOutput.text 1 9
execute store result score Online mcpvw if entity @a
scoreboard players reset #update timer
function main:player/playerid