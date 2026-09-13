#execute as @s[scores={factiondeathstreak=5..}] run function main:factions/factionchange

scoreboard players operation @s move += @s walk
scoreboard players operation @s move += @s sprint
scoreboard players reset @s[scores={sneak=1..}] move

scoreboard players operation @s move2 += @s walk
scoreboard players operation @s move2 += @s sprint

attribute @s attack_damage modifier remove piglinbonusdamage1
attribute @s attack_damage modifier remove piglinbonusdamage2
attribute @s attack_damage modifier remove piglinbonusdamage3
attribute @s attack_damage modifier remove piglinbonusdamage4
attribute @s attack_damage modifier remove piglinbonusdamage5
execute as @s[team=piglin,scores={piglinteamfaction=1}] run function main:factions/defaultpiglindamage
execute as @s[team=piglin,scores={piglinteamfaction=2}] at @s at @a[team=wither,tag=footstepmarker,distance=..32] run particle firework ~ ~0.125 ~ 0.1 0.1 0.1 0.1 1 force @s
execute as @s[team=piglin,scores={piglinteamfaction=2}] at @s if entity @e[tag=gamemodeffa,distance=..1000] at @a[tag=footstepmarker,distance=1..32] run particle firework ~ ~0.125 ~ 0.1 0.1 0.1 0.1 1 force @s

execute as @s[team=wither,scores={witherteamfaction=2}] run function main:factions/witherteamfaction2
execute as @s[team=wither,scores={witherteamfaction=3,bowuse=1..}] at @s positioned ~ ~1.65 ~ run tag @n[type=#minecraft:arrows] add bouncearrow
execute as @s[team=wither,scores={witherteamfaction=3,crossbowuse=1..}] at @s positioned ~ ~1.65 ~ run tag @n[type=#minecraft:arrows] add bouncearrow
tag @s remove footstepmarker

execute at @s if block ~ ~-0.25 ~ air run scoreboard players set @s move 143

execute at @s[team=piglin] run function main:factions/piglinfactions
execute at @s[team=piglinffa] run function main:factions/piglinffafactions
execute at @s[team=wither] run function main:factions/witherfactions
execute at @s[team=witherffa] run function main:factions/witherffafactions

execute if score @s move2 matches 1.. run tag @s add footstepmarker
scoreboard players reset @s move2
scoreboard players reset @s walk
scoreboard players reset @s sprint
execute if score @s move matches 144.. run function main:factions/walksound
scoreboard players reset @s[scores={move=144..}] move