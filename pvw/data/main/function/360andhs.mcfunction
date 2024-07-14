execute as @a[gamemode=!spectator] store result score @s rotationx2 run data get entity @s Rotation[0] 1
execute as @a[scores={rotationx2=..-1}] run scoreboard players operation @s rotationx2 *= -1 rotationp

execute as @a[y_rotation=-180..0] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationp -= @s rotationx2
execute as @a[y_rotation=-180..0] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationp += @s rotationx1
execute as @a[y_rotation=0..180] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationp += @s rotationx2
execute as @a[y_rotation=0..180] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationp -= @s rotationx1

execute as @a[scores={rotationp=1..}] run scoreboard players remove @s rotationp 8
execute as @a[scores={rotationp=..-1}] run scoreboard players set @s rotationp 0
execute as @a[scores={rotationp=360..}] run scoreboard players set @s rotationp 360
execute as @a[y_rotation=-180..0] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationm += @s rotationx2
execute as @a[y_rotation=-180..0] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationm -= @s rotationx1
execute as @a[y_rotation=0..180] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationm -= @s rotationx2
execute as @a[y_rotation=0..180] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationm += @s rotationx1

execute as @a[scores={rotationm=1..}] run scoreboard players remove @s rotationm 8
execute as @a[scores={rotationm=..-1}] run scoreboard players set @s rotationm 0
execute as @a[scores={rotationm=360..}] run scoreboard players set @s rotationm 360

execute as @a[scores={crossbowuse=1..}] run scoreboard players add @s rotationp 32
execute as @a[scores={crossbowuse=1..}] run scoreboard players add @s rotationm 32
execute as @a[scores={bowuse=1..}] run scoreboard players add @s rotationp 32
execute as @a[scores={bowuse=1..}] run scoreboard players add @s rotationm 32

#execute as @a[scores={sneak=1..,playerkill=1..}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.27 ~ if entity @s[distance=..0.125] run tag @s add playerhs
#execute as @a[scores={sneak=0,playerkill=1..}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.62 ~ if entity @s[distance=..0.125] run tag @s add playerhs
execute as @a store result score @s attackdamage run attribute @s minecraft:generic.attack_damage base get
execute as @a[scores={playerkill=1..}] if score @s attackdamage matches 4.. run tag @s add playerhs

execute as @a[tag=playerhs,scores={vatime=2},tag=!player360] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did A",{"text":" Headshot!","color":"red"}]
execute as @a[tag=playerhs,scores={vatime=24},tag=!player360] at @s run playsound minecraft:music_disc.tfheadshot voice @s ~ ~ ~ 0.7 1 0.7

execute as @a[scores={playerkill=1..,rotationp=180..}] run tag @s add player360
execute as @a[scores={playerkill=1..,rotationm=180..}] run tag @s add player360


scoreboard players add @a[tag=playerhs] vatime 1
tag @a[scores={vatime=25..}] remove playerhs
scoreboard players add @a[tag=player360] vatime 1
execute as @a[tag=player360,scores={vatime=2}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did A",{"text": " 360 TRICKSHOT!","color":"gold"}]
execute as @a[tag=player360,scores={vatime=24},tag=!playerhs] at @s run playsound minecraft:music_disc.tfthreesixty voice @s ~ ~ ~ 0.7 1 0.7
tag @a[scores={vatime=25..}] remove player360
tag @a[scores={vatime=25..}] remove playerhs
execute as @a[tag=player360,scores={vatime=23..},tag=playerhs] at @s run say i did 360 and hs yay
scoreboard players reset @a[scores={vatime=25..}] vatime

scoreboard players reset @a[scores={bowuse=1..}] bowuse
scoreboard players reset @a[scores={crossbowuse=1..}] crossbowuse

execute as @a[gamemode=!spectator] store result score @s rotationx1 run data get entity @s Rotation[0] 1
execute as @a[scores={rotationx1=..-1}] run scoreboard players operation @s rotationx1 *= -1 rotationp