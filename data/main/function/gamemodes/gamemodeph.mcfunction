execute store result score @s Win run scoreboard players get @s playercount
execute as @s[tag=mp8as] at @s store result score @s Piglins if entity @a[team=piglin,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp8as] at @s store result score @s Withers if entity @a[team=wither,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp8as] store result bossbar minecraft:mp8withers max run scoreboard players get @s playercount
execute as @s[tag=mp8as] store result bossbar minecraft:mp8piglins max run scoreboard players get @s playercount
execute as @s[tag=mp8as] at @s store result bossbar minecraft:mp8piglins value if entity @a[team=piglin,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp8as] at @s store result bossbar minecraft:mp8withers value if entity @a[team=wither,distance=..1000,gamemode=!spectator]
execute as @s[tag=!lockteams] if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp8as] store result bossbar minecraft:mp8timer value run scoreboard players get @s seconds
execute as @s[tag=mp8as] run bossbar set minecraft:mp8timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute if score @s timer matches ..0 run tag @s add piglinswin
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s if score @s timer matches 600 run tellraw @a[distance=..1000] {"text":"30 Seconds Left!","color":"red"}
execute at @s if score @s timer matches 600 run tellraw @a[distance=..1000] {"text":"Glowing effect applied for 3 seconds!","color":"gold"}
execute at @s if score @s timer matches 600 as @e[tag=phbd,distance=..1000] run data modify entity @s Glowing set value 1b
execute at @s if score @s timer matches 540 as @e[tag=phbd,distance=..1000] run data modify entity @s Glowing set value 0b
execute at @s as @a[scores={death2=1..},distance=..1000] run team join wither
execute at @s as @a[scores={death2=1..},distance=..1000] run tag @s add loadout
execute at @s as @a[scores={death2=1..},distance=..1000] run tag @s add phloadout
execute at @s as @a[team=piglin,distance=..1000] run effect give @s invisibility 1 0 true
execute at @s as @a[team=piglin,distance=..1000] run scoreboard players add @s goathorntimer 1
