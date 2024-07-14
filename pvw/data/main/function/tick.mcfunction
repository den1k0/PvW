function main:gamemodes
function main:loadmap
function main:projectiles
function main:playerid
function main:stats
function main:stopmusic
function main:lethals
function main:tacticals
function main:360andhs
function main:experience
function main:perks
function main:items
function main:damage
function main:killstreakannouncer
function main:killstreaks
function main:fieldupgrades
function main:ambient

execute as @a unless score @s loadoutid matches 1..4 run scoreboard players set @s loadoutid 1
execute as @a unless score @s loadout1part2 matches 1111.. run scoreboard players set @s loadout1part2 1111
execute as @a unless score @s loadout1part1 matches 11111111.. run scoreboard players set @s loadout1part1 11111111
execute as @a unless score @s loadout2part2 matches 1111.. run scoreboard players set @s loadout2part2 1111
execute as @a unless score @s loadout2part1 matches 11111111.. run scoreboard players set @s loadout2part1 11111111
execute as @a unless score @s loadout3part2 matches 1111.. run scoreboard players set @s loadout3part2 1111
execute as @a unless score @s loadout3part1 matches 11111111.. run scoreboard players set @s loadout3part1 11111111
execute as @a unless score @s loadout4part2 matches 1111.. run scoreboard players set @s loadout4part2 1111
execute as @a unless score @s loadout4part1 matches 11111111.. run scoreboard players set @s loadout4part1 11111111

execute as @a[tag=resetstats] run function main:resetstats
execute if entity @a[gamemode=spectator] run function main:spectator
execute as @e[tag=clearmap] run function main:clearmap
execute as @a[] if items entity @s weapon.mainhand compass run function main:loadoutchange
execute as @a[] unless items entity @s weapon.mainhand compass run tag @s remove loadoutchange
execute if entity @e[tag=loadoutchangechest] unless entity @a[tag=loadoutchange] run function main:loadoutchange
execute as @a[tag=pvwdefaultinventory] run function main:pvwdefaultinventory
execute as @a[tag=loadout] run function main:loadout
execute as @a[scores={death=1..}] run function main:death

execute as @a[tag=playerhsme] at @s positioned ~ ~1.65 ~ unless entity @e[type=#minecraft:impact_projectiles,distance=..3] run tag @s remove playerhsme
scoreboard players reset @a playerkill
execute as @a[gamemode=survival] run gamemode adventure @s
execute as @a[tag=ingame] unless score @s killstreak matches 0.. run scoreboard players set @s killstreak 1