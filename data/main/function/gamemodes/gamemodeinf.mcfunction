execute store result score @s Win run scoreboard players get @s playercount
execute as @s[tag=mp6as] at @s store result score @s Piglins if entity @a[team=piglin,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp6as] at @s store result score @s Withers if entity @a[team=wither,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp6as] store result bossbar minecraft:mp6withers max run scoreboard players get @s playercount
execute as @s[tag=mp6as] store result bossbar minecraft:mp6piglins max run scoreboard players get @s playercount
execute as @s[tag=mp6as] at @s store result bossbar minecraft:mp6piglins value if entity @a[team=piglin,distance=..1000,gamemode=!spectator]
execute as @s[tag=mp6as] at @s store result bossbar minecraft:mp6withers value if entity @a[team=wither,distance=..1000,gamemode=!spectator]
execute as @s[tag=!infectedwait] if score @s Piglins >= @s Win run tag @s add piglinswin
execute as @s[tag=!infectedwait] if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp6as] store result bossbar minecraft:mp6timer value run scoreboard players get @s seconds
execute as @s[tag=mp6as] run bossbar set minecraft:mp6timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute as @s[tag=!infectedwait] if score @s timer matches ..0 run tag @s add piglinswin
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s as @a[scores={death2=1..},distance=..1000] run team join wither