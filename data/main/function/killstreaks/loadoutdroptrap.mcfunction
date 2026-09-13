execute as @s[tag=loadoutdroptrapinit] at @s run playsound minecraft:music_disc.dodairdrop neutral @a ~ ~ ~ 0.5 1 0
execute as @s[tag=loadoutdroptrapinit] at @s store result score @s playerid run scoreboard players get @p[scores={villageregguse=1..}] playerid
execute as @s[tag=loadoutdroptrapinit] at @s run tp @s ~ ~32 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdroptrapinit] run tag @s add findair
execute as @s[tag=findair] at @s unless block ~ ~ ~ #air run tp @s ~ ~-1 ~
execute as @s[tag=findair] at @s if block ~ ~ ~ #air run tag @s remove findair
execute as @s at @s if block ~ ~-0.25 ~ #air run tp @s ~ ~-0.25 ~

execute as @s[tag=!findair] at @s if entity @e[distance=..1000,tag=gamemodeffa] as @a[distance=..1.25] unless score @s playerid = @n[tag=loadoutdroptrap] playerid run tag @n[tag=loadoutdroptrap] add trapexplode
execute as @s[tag=!findair] at @s as @a[distance=..1000,team=piglin] if score @s playerid = @n[tag=loadoutdroptrap] playerid if entity @a[gamemode=!spectator,distance=..1.25,team=wither] run tag @n[tag=loadoutdroptrap] add trapexplode
execute as @s[tag=!findair] at @s as @a[distance=..1000,team=wither] if score @s playerid = @n[tag=loadoutdroptrap] playerid if entity @a[gamemode=!spectator,distance=..1.25,team=piglin] run tag @n[tag=loadoutdroptrap] add trapexplode

execute as @s[tag=trapexplode] unless score @s temp2 matches 1.. at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 1 0
execute as @s[tag=trapexplode] unless score @s temp2 matches 1.. at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0 16 normal
scoreboard players add @s[tag=trapexplode] temp2 1
execute at @s[scores={temp2=30..}] run particle explosion ~ ~0.25 ~ 1 1 1 0 30 normal
execute at @s[scores={temp2=30..}] run playsound entity.generic.explode master @a ~ ~ ~ 1 1 0
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @e[distance=..1.5,type=!player] run damage @n 20 player_explosion by @s
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @e[distance=..2.75,type=!player] run damage @n 16 player_explosion by @s
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @e[distance=..4,type=!player] run damage @n 12 player_explosion by @s
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @a[distance=..1.5] run damage @p[gamemode=!spectator] 20 player_explosion by @s
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @a[distance=..2.75] run damage @p[gamemode=!spectator] 16 player_explosion by @s
execute at @s[scores={temp2=30..}] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap,scores={temp2=30..}] playerid at @a[distance=..4] run damage @p[gamemode=!spectator] 12 player_explosion by @s
execute as @s[scores={temp2=30..}] run kill @s

execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @n[tag=loadoutdroptrap] playerid run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1} ~ ~0.5 ~ 0.45 0.45 0.45 0 4 normal @a[team=piglin]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @n[tag=loadoutdroptrap] playerid run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1} ~ ~0.5 ~ 0.45 0.45 0.45 0 4 normal @a[team=wither]
execute at @s if entity @e[distance=..1000,tag=gamemodeffa] as @a[distance=..1000] if score @s playerid = @n[tag=loadoutdroptrap] playerid run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1} ~ ~0.5 ~ 0.45 0.45 0.45 0 4 normal @s

execute at @s run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.5 ~ 1 1 1 0 1 normal
execute at @s if block ~ ~-0.25 ~ #air run particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 4 normal
execute as @s[tag=loadoutdroptrapinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
execute as @s[tag=loadoutdroptrapinit] run data modify entity @s teleport_duration set value 1
tag @s[tag=loadoutdroptrapinit] remove loadoutdroptrapinit
scoreboard players add @s temp 1
execute as @s[scores={temp=800}] run tag @s add trapexplode