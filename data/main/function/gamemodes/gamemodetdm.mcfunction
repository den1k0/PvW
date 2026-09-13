execute at @s if entity @a[scores={death=1..},team=piglin,distance=..1000] run scoreboard players add @s Withers 1
execute at @s if entity @a[scores={death=1..},team=wither,distance=..1000] run scoreboard players add @s Piglins 1

execute as @s[tag=mp3as] store result bossbar minecraft:mp3piglins value run scoreboard players get @s Piglins
execute as @s[tag=mp3as] store result bossbar minecraft:mp3withers value run scoreboard players get @s Withers
execute as @s[tag=mp3as] run bossbar set minecraft:mp3piglins name [{"text":"Piglins","color":"gold"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"piglincount"},"color":"white"}]
execute as @s[tag=mp3as] run bossbar set minecraft:mp3withers name [{"text":"Withers","color":"aqua"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"withercount"},"color":"white"}]

execute if score @s Piglins >= @s Win if score @s Withers >= @s Win run tag @s add tie
execute if score @s[tag=!tie] Piglins >= @s Win run tag @s add piglinswin
execute if score @s[tag=!tie] Withers >= @s Win run tag @s add witherswin
execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
execute run scoreboard players operation @s seconds = @s timer
execute run scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp3as] store result bossbar minecraft:mp3timer value run scoreboard players get @s seconds
execute as @s[tag=mp3as] run bossbar set minecraft:mp3timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute if score @s timer matches ..0 if score @s Piglins > @s Withers run tag @s add piglinswin
execute if score @s timer matches ..0 if score @s Piglins < @s Withers run tag @s add witherswin
execute if score @s timer matches ..0 if score @s Piglins = @s Withers run tag @s add tie
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s if score @s timer matches 6000 run playsound minecraft:music_disc.tdmfiveminutes voice @a[distance=..1000] ~ ~ ~ 0.7 1 0.7
