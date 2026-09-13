execute as @s[tag=mp2as] store result bossbar minecraft:mp2piglins value run scoreboard players get @s Piglins
execute as @s[tag=mp2as] store result bossbar minecraft:mp2withers value run scoreboard players get @s Withers
execute as @s[tag=mp2as] run bossbar set minecraft:mp2piglins name [{"text":"Piglins","color":"gold"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"piglincount"},"color":"white"}]
execute as @s[tag=mp2as] run bossbar set minecraft:mp2withers name [{"text":"Withers","color":"aqua"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"withercount"},"color":"white"}]

execute if score @s Piglins >= @s Win run tag @s add piglinswin
execute if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp2as] store result bossbar minecraft:mp2timer value run scoreboard players get @s seconds
execute as @s[tag=mp2as] run bossbar set minecraft:mp2timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute if score @s timer matches ..0 if score @s Piglins > @s Withers run tag @s add piglinswin
execute if score @s timer matches ..0 if score @s Piglins < @s Withers run tag @s add witherswin
execute if score @s timer matches ..0 if score @s Piglins = @s Withers run tag @s add tie
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s if score @s timer matches 6000 run playsound minecraft:music_disc.tdmfiveminutes voice @a[distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[tag=mp2as] store result bossbar minecraft:mp2zone value run scoreboard players get @s temp3