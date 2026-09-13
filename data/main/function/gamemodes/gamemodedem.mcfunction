execute as @s[tag=mp9as] store result bossbar minecraft:mp9piglins value run scoreboard players get @s Piglins
execute as @s[tag=mp9as] store result bossbar minecraft:mp9withers value run scoreboard players get @s Withers
execute as @s[tag=mp9as] run bossbar set minecraft:mp9piglins name [{"text":"Piglins","color":"gold"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"piglincount"},"color":"white"}]
execute as @s[tag=mp9as] run bossbar set minecraft:mp9withers name [{"text":"Withers","color":"aqua"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"withercount"},"color":"white"}]

execute if score @s Piglins >= @s Win run tag @s add piglinswin
execute if score @s Withers >= @s Win run tag @s add witherswin
execute if score @s timer matches 4801.. run scoreboard players set @s timer 4800
execute as @s[tag=!lockteams,tag=!nextround] at @s unless entity @e[tag=bomb,distance=..1000] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp9as] store result bossbar minecraft:mp9timer value run scoreboard players get @s seconds
execute as @s[tag=mp9as] run bossbar set minecraft:mp9timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute as @s[tag=!nextround] if score @s timer matches 0 run tag @s add withersroundwin
execute as @s[tag=!nextround] if score @s timer matches 0 run scoreboard players add @s Withers 1
execute if score @s timer matches 0 run tag @s add nextround
execute if score @s timer matches 0 at @s run clear @a[distance=..1000] tnt
execute at @s unless entity @e[tag=bomb,distance=..1000] if score @s timer matches 1200 run tag @s add outoftime
