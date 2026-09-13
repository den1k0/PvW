execute as @s[tag=itemtoinventory] run function main:inventory/itemtoinventory
execute as @s[tag=loadout] run function main:loadout/loadout
execute as @s[scores={death=1..},tag=ingame] run function main:player/death
execute as @s[tag=playerhsme] at @s positioned ~ ~1.65 ~ unless entity @e[type=#minecraft:impact_projectiles,distance=..3] run tag @s remove playerhsme
scoreboard players reset @s[scores={playerkill=1..}] deathstreak
scoreboard players remove @s[scores={playerkill=1..}] playerkill 1
execute as @s[tag=ingame] unless score @s killstreak matches 0.. run scoreboard players set @s killstreak 1
function main:triggers/triggers
scoreboard players reset @s[tag=!ingame,scores={death=1..}] death