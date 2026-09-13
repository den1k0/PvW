execute at @s run team join wither @a[sort=random,limit=1,team=piglin,gamemode=!spectator,distance=..1000]
execute at @s run tag @e[team=wither] add loadout
execute at @s run tag @e[team=wither] add infectedloadout
execute at @s at @a[team=wither] run particle minecraft:witch ~ ~1 ~ 1 1 1 1 300 normal
execute at @s at @a[team=wither] run playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 3 0.5 0
execute at @s as @a[team=wither] run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Is The First Infected!"]
execute at @s as @a[team=wither] run title @s title {"text":"You Are Infected!","color":"dark_purple"}
execute at @s run scoreboard players set @s timer 6000
execute run tag @s remove infectedrelease