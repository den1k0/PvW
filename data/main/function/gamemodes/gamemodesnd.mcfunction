execute as @s[tag=mp4as] store result bossbar minecraft:mp4piglins value run scoreboard players get @s Piglins
execute as @s[tag=mp4as] store result bossbar minecraft:mp4withers value run scoreboard players get @s Withers
execute as @s[tag=mp4as] run bossbar set minecraft:mp4piglins name [{"text":"Piglins","color":"gold"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"piglincount"},"color":"white"}]
execute as @s[tag=mp4as] run bossbar set minecraft:mp4withers name [{"text":"Withers","color":"aqua"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"withercount"},"color":"white"}]

execute if score @s Piglins >= @s Win run tag @s add piglinswin
execute if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[tag=!lockteams,tag=!nextround] at @s unless entity @e[tag=bomb,distance=..1000] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp4as] store result bossbar minecraft:mp4timer value run scoreboard players get @s seconds
execute as @s[tag=mp4as] run bossbar set minecraft:mp4timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute as @s[tag=!nextround] if score @s timer matches 0 run tag @s add withersroundwin
execute as @s[tag=!nextround] if score @s timer matches 0 run scoreboard players add @s Withers 1
execute if score @s timer matches 0 run tag @s add nextround
execute if score @s timer matches 0 at @s run clear @a[distance=..1000] tnt
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s if score @s timer matches ..2900 store result score @s wtemp if entity @a[team=wither,distance=..1000,gamemode=!spectator]
execute at @s if score @s timer matches ..2900 store result score @s ptemp if entity @a[team=piglin,distance=..1000,gamemode=!spectator]
execute as @s[tag=!lastwitherannounced] if score @s timer matches ..2900 if score @s wtemp matches 1 run tag @s add lastwither
execute as @s[tag=!lastwitherannounced] if score @s timer matches ..2900 if score @s wtemp matches 1 run tag @s add lastwitherannounced
execute as @s[tag=!lastpiglinannounced] if score @s timer matches ..2855 if score @s ptemp matches 1 run tag @s add lastpiglin
execute as @s[tag=!lastpiglinannounced] if score @s timer matches ..2855 if score @s ptemp matches 1 run tag @s add lastpiglinannounced
execute as @s[tag=lastwither] at @s run playsound minecraft:music_disc.tdmlastenemy voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lastwither] at @s run playsound minecraft:music_disc.tdmmillastalivve voice @a[team=wither,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lastwither] run tag @s remove lastwither
execute as @s[tag=lastpiglin] at @s run playsound minecraft:music_disc.tdmlastenemy voice @a[team=wither,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lastpiglin] at @s run playsound minecraft:music_disc.tdmabyouarelast voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lastpiglin] run tag @s remove lastpiglin
execute as @s[tag=!lasttwowitherannounced] if score @s timer matches ..2900 if score @s wtemp matches 2 run tag @s add lasttwowither
execute as @s[tag=!lasttwowitherannounced] if score @s timer matches ..2900 if score @s wtemp matches 2 run tag @s add lasttwowitherannounced
execute as @s[tag=!lasttwopiglinannounced] if score @s timer matches ..2855 if score @s ptemp matches 2 run tag @s add lasttwopiglin
execute as @s[tag=!lasttwopiglinannounced] if score @s timer matches ..2855 if score @s ptemp matches 2 run tag @s add lasttwopiglinannounced
execute as @s[tag=lasttwowither] at @s run playsound minecraft:music_disc.tdmtwoenemy voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lasttwowither] run tag @s remove lasttwowither
execute as @s[tag=lasttwopiglin] at @s run playsound minecraft:music_disc.tdmtwoenemy voice @a[team=wither,distance=..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[tag=lasttwopiglin] run tag @s remove lasttwopiglin

execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=piglin,distance=..1000,gamemode=!spectator] unless entity @e[tag=bomb,distance=..1000] run tag @s add withersroundwin
execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=piglin,distance=..1000,gamemode=!spectator] unless entity @e[tag=bomb,distance=..1000] run scoreboard players add @s Withers 1
execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=piglin,distance=..1000,gamemode=!spectator] unless entity @e[tag=bomb,distance=..1000] run tag @s add nextround
execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=wither,distance=..1000,gamemode=!spectator] run tag @s add piglinsroundwin
execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=wither,distance=..1000,gamemode=!spectator] run scoreboard players add @s Piglins 1
execute as @s[tag=!lockteams,tag=!nextround,scores={timer=..2900}] at @s unless entity @e[team=wither,distance=..1000,gamemode=!spectator] run tag @s add nextround
