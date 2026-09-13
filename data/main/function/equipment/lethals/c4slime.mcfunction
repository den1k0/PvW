scoreboard players add @s temp 1
execute as @s[scores={temp=1}] run attribute @s max_health base set 10
execute as @s[scores={temp=1}] run data modify entity @s Health set value 10f
execute as @s[scores={temp=1}] at @s run playsound minecraft:music_disc.iiradarfour master @a ~ ~ ~ 0.5 1.7 0
execute as @s[scores={temp=1}] at @s run scoreboard players operation @s playerid = @p[scores={magmaspawnegg=1..}] playerid
execute as @s[scores={temp=1}] at @s as @p[gamemode=!spectator,scores={magmaspawnegg=1..}] if entity @s[team=piglin] run tag @e[sort=nearest,limit=1,tag=c4,scores={temp=1}] add c4piglin
execute as @s[scores={temp=1}] at @s as @p[gamemode=!spectator,scores={magmaspawnegg=1..}] if entity @s[team=wither] run tag @e[sort=nearest,limit=1,tag=c4,scores={temp=1}] add c4wither

execute as @s[scores={temp=1}] at @s if block ~ ~ ~ #air unless block ~1 ~ ~ #air run tp @s ~0.25 ~ ~
execute as @s[scores={temp=1}] at @s if block ~ ~ ~ #air unless block ~1 ~ ~ #air run tag @s add c4xattached
execute as @s[scores={temp=1},tag=!c4xattached] at @s if block ~ ~ ~ #air unless block ~-1 ~ ~ #air run tp @s ~-0.25 ~ ~
execute as @s[scores={temp=1},tag=!c4xattached] at @s if block ~ ~ ~ #air unless block ~-1 ~ ~ #air run tag @s add c4xattached
execute as @s[scores={temp=1}] at @s if block ~ ~ ~ #air unless block ~ ~ ~1 #air run tp @s ~ ~ ~0.25
execute as @s[scores={temp=1}] at @s if block ~ ~ ~ #air unless block ~ ~ ~1 #air run tag @s add c4zattached
execute as @s[scores={temp=1},tag=!c4zattached] at @s if block ~ ~ ~ #air unless block ~ ~ ~-1 #air run tp @s ~ ~ ~-0.25
execute as @s[scores={temp=1},tag=!c4zattached] at @s if block ~ ~ ~ #air unless block ~ ~ ~-1 #air run tag @s add c4zattached

execute as @s[scores={temp=1}] store result score @s random run random value 1..4
execute as @s[scores={temp=1}] at @s if score @s random matches 1 run tp @s ~ ~ ~ 0 0
execute as @s[scores={temp=1}] at @s if score @s random matches 2 run tp @s ~ ~ ~ 0 90
execute as @s[scores={temp=1}] at @s if score @s random matches 3 run tp @s ~ ~ ~ 0 180
execute as @s[scores={temp=1}] at @s if score @s random matches 4 run tp @s ~ ~ ~ 0 270

execute as @s[tag=c4piglin] at @s run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute as @s[tag=c4wither] at @s run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute as @s[tag=detonated] run scoreboard players add @s temp2 1
execute as @s[tag=detonated,scores={temp2=1}] at @s run playsound block.note_block.banjo master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=detonated,scores={temp2=16..}] run particle minecraft:explosion ~ ~ ~ 1.9 1.9 1.9 0 32 normal
execute at @s[tag=detonated,scores={temp2=16..}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 0.7 0
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @e[distance=0.01..2,type=!player] run damage @e[sort=nearest,limit=1] 14 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @e[distance=0.01..3.5,type=!player] run damage @e[sort=nearest,limit=1] 11 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @e[distance=0.01..5,type=!player] run damage @e[sort=nearest,limit=1] 8 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @a[distance=..2] run damage @p[gamemode=!spectator] 14 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @a[distance=..3.5] run damage @p[gamemode=!spectator] 11 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=detonated] playerid at @a[distance=..5] run damage @p[gamemode=!spectator] 8 minecraft:player_explosion by @s
execute as @s[tag=detonated,scores={temp2=16..}] run kill @s