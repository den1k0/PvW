effect give @s[scores={classslot10=1}] minecraft:speed 1 0 true

execute as @s[scores={playerkill=1..,classslot10=2},tag=!got1perks] run function main:perks/scavenger

effect give @s[scores={classslot10=6}] minecraft:haste 1 2 true

execute as @s[scores={classslot11=4},team=piglin] at @s unless entity @e[tag=gamemodeph,distance=..1000] run effect give @s[team=wither,distance=..3.5] minecraft:glowing 1 0 false
execute as @s[scores={classslot11=4},team=wither] at @s unless entity @e[tag=gamemodeph,distance=..1000] run effect give @s[team=piglin,distance=..3.5] minecraft:glowing 1 0 false
execute as @s[tag=got2perks,team=piglin] at @s unless entity @e[tag=gamemodeph,distance=..1000] run effect give @s[team=wither,distance=..3.5] minecraft:glowing 1 0 false
execute as @s[tag=got2perks,team=wither] at @s unless entity @e[tag=gamemodeph,distance=..1000] run effect give @s[team=piglin,distance=..3.5] minecraft:glowing 1 0 false

execute as @s[scores={classslot10=3},tag=!got1perks] run function main:perks/coldblooded

effect give @s[scores={playerkill=1..,classslot10=4}] speed 3 2 true

execute as @s[scores={classslot10=5},gamemode=!spectator,tag=!got1perks] run function main:perks/resupply
execute as @s[tag=got1perks,gamemode=!spectator] run function main:perks/resupply
execute as @s[tag=!ingame] run scoreboard players set @s resupply 0

execute as @s[scores={classslot10=6},gamemode=!spectator,team=piglin] at @s as @e[type=minecraft:arrow,tag=inground,distance=..2.25,tag=arrowteamwither] run tag @s add arrowitem
execute as @s[scores={classslot10=6},gamemode=!spectator,team=wither] at @s as @e[type=minecraft:arrow,tag=inground,distance=..2.25,tag=arrowteampiglin] run tag @s add arrowitem

execute as @s[scores={classslot10=6},gamemode=!spectator] at @s as @e[type=item,distance=..2.25] if data entity @s {PickupDelay:0s} run tp @s ~ ~ ~

execute as @s[scores={climbladder=20..,classslot11=1}] run function main:perks/lightweight

execute as @s[scores={playerkill=1..,classslot11=3}] run effect give @s minecraft:strength 10 0 false
execute as @s[scores={classslot11=5,killstreak=0,classslot12=1..2}] run scoreboard players set @s killstreak 1
execute as @s[scores={classslot11=5,killstreak=0,classslot12=4}] run scoreboard players set @s killstreak 1
execute as @s[scores={classslot11=5,damagedealtperlife=0,classslot12=3}] run scoreboard players set @s damagedealtperlife 150

execute as @s[scores={classslot11=6},team=piglin] at @s at @e[distance=..32,type=!player,type=!marker,type=!item] as @s[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1] playerid run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~0.5 ~ 1.6 1.6 1.6 0 2 normal @s[team=piglin,gamemode=!spectator,scores={classslot11=6}]
execute as @s[scores={classslot11=6},team=wither] at @s at @e[distance=..32,type=!player,type=!marker,type=!item] as @s[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1] playerid run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~0.5 ~ 1.6 1.6 1.6 0 2 normal @s[team=wither,gamemode=!spectator,scores={classslot11=6}]
execute as @s[scores={classslot11=6}] at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[distance=..32,type=!player,type=!marker,type=!item] unless score @s playerid = @p[gamemode=!spectator,scores={classslot11=6}] playerid run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~0.5 ~ 2 2 2 0 2 normal @p[gamemode=!spectator,scores={classslot11=6}]

execute if items entity @s weapon.mainhand iron_hoe run function main:perks/ironhoe

execute as @s[scores={piglinteamfaction=3},team=piglin] run function main:perks/witchpassive
execute as @s[tag=motionadder] run function main:perks/motionadder
scoreboard players reset @s splashpotionuse
scoreboard players reset @s lingeringpotionuse
scoreboard players reset @s tridentuse
scoreboard players reset @s snowballuse