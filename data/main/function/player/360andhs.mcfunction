execute as @s[gamemode=!spectator] store result score @s rotationx2 run data get entity @s Rotation[0] 1
execute as @s[scores={rotationx2=..-1}] run scoreboard players operation @s rotationx2 *= -1 rotationp

execute as @s[y_rotation=-180..0] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationp -= @s rotationx2
execute as @s[y_rotation=-180..0] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationp += @s rotationx1
execute as @s[y_rotation=0..180] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationp += @s rotationx2
execute as @s[y_rotation=0..180] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationp -= @s rotationx1

execute as @s[scores={rotationp=1..}] run scoreboard players remove @s rotationp 8
execute as @s[scores={rotationp=..-1}] run scoreboard players set @s rotationp 0
execute as @s[scores={rotationp=360..}] run scoreboard players set @s rotationp 360
execute as @s[y_rotation=-180..0] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationm += @s rotationx2
execute as @s[y_rotation=-180..0] if score @s rotationx1 <= @s rotationx2 run scoreboard players operation @s rotationm -= @s rotationx1
execute as @s[y_rotation=0..180] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationm -= @s rotationx2
execute as @s[y_rotation=0..180] if score @s rotationx1 >= @s rotationx2 run scoreboard players operation @s rotationm += @s rotationx1

execute as @s[scores={rotationm=1..}] run scoreboard players remove @s rotationm 8
execute as @s[scores={rotationm=..-1}] run scoreboard players set @s rotationm 0
execute as @s[scores={rotationm=360..}] run scoreboard players set @s rotationm 360

execute as @s[scores={crossbowuse=1..}] run scoreboard players add @s rotationp 32
execute as @s[scores={crossbowuse=1..}] run scoreboard players add @s rotationm 32
execute as @s[scores={bowuse=1..}] run scoreboard players add @s rotationp 32
execute as @s[scores={bowuse=1..}] run scoreboard players add @s rotationm 32

execute as @s store result score @s attackdamage run attribute @s minecraft:attack_damage modifier value get attackdamagehs
execute as @s[scores={playerkill=1..}] if score @s attackdamage matches 3.. run tag @s add playerhs
execute as @s[scores={damagetaken=1..}] at @s on attacker if score @s attackdamage matches 3.. as @p[gamemode=adventure,distance=..16] run function main:player/hsparticles

execute as @s[scores={playerkill=1..,rotationp=172..}] run tag @s add player360
execute as @s[scores={playerkill=1..,rotationm=172..}] run tag @s add player360

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":false}}} run scoreboard players add @s notonground 1
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":true}}} run scoreboard players reset @s notonground
execute as @s[scores={playerkill=1..,notonground=12..}] run tag @s add playerairborne

tag @s[tag=player360] add vatick
tag @s[tag=playerhs] add vatick
tag @s[tag=playerairborne] add vatick
scoreboard players add @s[tag=vatick] vatime 1

tag @s[tag=playerairborne,tag=player360,tag=playerhs] add legendarykillva
tag @s remove vatick

execute as @s[scores={vatime=1..}] run function main:player/vatime

execute as @s[gamemode=!spectator] unless score @s rotationx2 = @s rotationx1 store result score @s rotationx1 run data get entity @s Rotation[0] 1
execute as @s[scores={rotationx1=..-1}] run scoreboard players operation @s rotationx1 *= -1 rotationp