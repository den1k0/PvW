execute as @e[type=armor_stand,tag=mpas] run function main:mplobby/mpasplayers

scoreboard players add #tps timer 1
execute if score #tps timer matches 21.. run scoreboard players set #tps timer 20
execute store success score #tps success run data modify storage pvw tps set string block 0 -2 0 LastOutput.text 8 9
execute if score #tps success matches 1 run function main:server/tps

scoreboard players add #update timer 1
execute if score #update timer matches 20.. run function main:server/update

scoreboard players add #altupdate timer 1
execute if score #altupdate timer matches 2.. run scoreboard players set #altupdate timer 0

# little laggy
execute as @a run function main:player/playerfunctions

execute if score #altupdate timer matches 0 run function main:server/altupdate
execute as @e[type=marker,tag=binocularsmarker] run function main:entities/binocularsmarker

function main:gamemodes/gamemodes
execute as @e[type=armor_stand,tag=mpas,tag=!gaming] run function main:loadmap/loadmap
execute as @e[type=armor_stand,tag=mpas,tag=gaming] unless score @s loadmaptimer matches 0 run function main:loadmap/loadmap
function main:projectiles/projectiles
function main:equipment/tacticals/tacticals
function main:equipment/lethals/lethals

# laggy
execute as @a[tag=ingame] run function main:player/360andhs
execute as @a[tag=ingame] run function main:perks/perks

# laggy
execute as @e[tag=motionadd] run function main:perks/motionadd
execute as @e[tag=arrowitem] run function main:perks/arrowitem
execute as @a run function main:items/items
function main:items/entityitems
function main:killstreaks/killstreakmechanics

execute as @a run function main:damage/damage
function main:equipment/fieldupgrades/fieldupgrades
function main:ambient/ambient
execute as @a[tag=loadskin,sort=random,limit=1] run tag @s add loadskinme

# laggy
execute as @a run function main:player/players

execute if entity @e[tag=skinchangechest] unless entity @a[tag=skinchange] run function main:skins/skinchange
execute as @e[tag=loadoutchangechest] unless entity @a[tag=loadoutchange] run function main:loadout/loadoutchange
execute if entity @e[tag=inventorychangechest] unless entity @a[tag=inventorychange] run function main:inventory/inventorychange
execute as @e[type=armor_stand,tag=mpas] run function main:mplobby/mpasfunctions
execute as @a run function main:player/playerother
execute as @e[type=minecraft:text_display,tag=radiotext] run function main:entities/radiotext
execute if score #altupdate timer matches 1 as @a run function main:player/altfunctions
scoreboard players reset @a playerkill2