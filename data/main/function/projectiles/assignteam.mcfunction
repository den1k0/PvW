execute at @s run scoreboard players operation @s playerid = @p[gamemode=!spectator] playerid
execute at @s as @a[gamemode=!spectator,sort=nearest,limit=1] if entity @s[team=wither] run tag @e[tag=assignteam,sort=nearest,limit=1] add arrowteamwither
execute at @s as @a[gamemode=!spectator,sort=nearest,limit=1] if entity @s[team=piglin] run tag @e[tag=assignteam,sort=nearest,limit=1] add arrowteampiglin
tag @s add arrowteam
tag @s remove assignteam

execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:7083032} run tag @s add arrowparticlemolotov
execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:3684408} run tag @s add arrowparticledrill
execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:4281871} run tag @s add arrowparticlesemtex

execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:1646884} run tag @s add arrowparticlesmoke
execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:15988471} run tag @s add arrowparticleflash
execute if data entity @s[type=arrow] item.components.minecraft:potion_contents{custom_color:14929226} run tag @s add arrowparticleradar