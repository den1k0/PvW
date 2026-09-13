execute as @s[tag=mp5as] store result bossbar minecraft:mp5piglins value run scoreboard players get @s Piglins
execute as @s[tag=mp5as] store result bossbar minecraft:mp5withers value run scoreboard players get @s Withers
execute as @s[tag=mp5as] run bossbar set minecraft:mp5piglins name [{"text":"Piglins","color":"gold"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"piglincount"},"color":"white"}]
execute as @s[tag=mp5as] run bossbar set minecraft:mp5withers name [{"text":"Withers","color":"aqua"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"withercount"},"color":"white"}]

execute as @s[tag=!lockteams,tag=!nextround] at @s at @e[tag=hqbd,distance=..1000] positioned ~2.5 ~ ~2.5 unless entity @a[team=wither,gamemode=!spectator,distance=..3.125] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp5as] store result bossbar minecraft:mp5timer value run scoreboard players get @s seconds
execute as @s[tag=mp5as] run bossbar set minecraft:mp5timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute as @s[tag=!nextround] if score @s timer matches ..0 if score @s bool2 matches 0 if score @s Piglins > @s Withers run tag @s add piglinswin
execute as @s[tag=!nextround] if score @s timer matches ..0 if score @s bool2 matches 0 if score @s Piglins < @s Withers run tag @s add witherswin
execute as @s[tag=!nextround] if score @s timer matches ..0 if score @s bool2 matches 0 if score @s Piglins = @s Withers run tag @s add tie
execute as @s[tag=!nextround] if score @s timer matches ..0 run tag @s remove hqzone
execute as @s[tag=!nextround] if score @s timer matches ..0 run tag @s remove requesthqzone
execute as @s[tag=!nextround] if score @s timer matches ..0 if score @s bool2 matches 1 if score @s Withers matches 1.. run tag @s add withersroundwin
execute as @s[tag=!nextround] if score @s timer matches ..0 if score @s bool2 matches 1 unless score @s Withers matches 1.. run tag @s add piglinsroundwin
execute as @s[tag=!nextround] if score @s timer matches ..0 run scoreboard players set @s temp3 0
execute as @s[tag=!nextround] if score @s timer matches ..0 run tag @s add nextround
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute as @s[tag=mp5as] store result bossbar minecraft:mp5zone value run scoreboard players get @s wtemp