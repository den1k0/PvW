execute at @s as @a[scores={leavegame=1..},distance=..1000] run scoreboard players set @s matchid -1
execute at @s as @a[scores={death2=1..},distance=..1000] run scoreboard players set @s spectate 1
execute at @s as @a[scores={death2=1..},distance=..1000] run gamemode spectator @s 
execute at @s as @a[scores={death2=1..},distance=..1000,team=piglin] if data entity @s Inventory[{id:"minecraft:tnt"}] run summon minecraft:block_display ~-0.375 ~ ~-0.375 {Tags:["bombdrop"],Glowing:1b,block_state:{Name:"minecraft:tnt"}}
execute at @s as @a[scores={death2=1..},distance=..1000,team=piglin] if data entity @s Inventory[{id:"minecraft:tnt"}] as @e[tag=bombdrop,distance=..1000] run data modify entity @s transformation.scale set value [0.75f,0.75f,0.75f]
execute at @s as @a[team=wither,gamemode=spectator,scores={spectate=1..},distance=..1000] at @s unless entity @a[team=wither,distance=..1,gamemode=adventure] run spectate @a[limit=1,team=wither,gamemode=adventure]
execute at @s as @a[team=wither,gamemode=spectator,scores={spectate=1..},distance=..1000] unless entity @a[team=wither,gamemode=adventure] run spectate @a[limit=1,team=piglin,gamemode=adventure]
execute at @s as @a[team=piglin,gamemode=spectator,scores={spectate=1..},distance=..1000] at @s unless entity @a[team=piglin,distance=..1,gamemode=adventure] run spectate @a[limit=1,team=piglin,gamemode=adventure]
execute at @s as @a[team=piglin,gamemode=spectator,scores={spectate=1..},distance=..1000] unless entity @a[team=piglin,gamemode=adventure] run spectate @a[limit=1,team=wither,gamemode=adventure]