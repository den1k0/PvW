execute as @s[tag=loadoutafterteam] run function main:loadout/loadoutafterteam
execute as @s[scores={death=1..},tag=randomizeloadoutdeath] run tag @s add randomloadout
execute as @s[scores={death=1..},tag=randomizeloadoutdeath] run tag @s add showmyloadout
execute as @s[tag=randomloadout] run function main:loadout/loadoutrandomizer
execute as @s[gamemode=!spectator] run function main:skins/particleeffects
execute as @s[tag=leavegame] run function main:triggers/leavegame
execute as @s[tag=loadskinme] run function main:loadout/loadskin
execute as @s[scores={playerkill3=1..}] unless score @s voiceovertimer matches 1.. run function main:voiceover/playerkill

execute store result score @s[gamemode=!spectator] itemtemp run data get entity @s SelectedItem.id
execute unless score @s itemtemp = @s item run function main:player/changeditem

function main:experience/experience
function main:player/menuitems