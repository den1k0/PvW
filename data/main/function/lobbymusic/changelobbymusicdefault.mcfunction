execute store result score #randomlobbymusic lobbymusictimer run random value 1..7

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 1 run playsound minecraft:music_disc.pvwlobbymusicone music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 1 run playsound minecraft:music_disc.pvwlobbymusicone music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 1 run scoreboard players set @s lobbymusictimer 2000

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 2 run playsound minecraft:music_disc.pvwlobbymusictwo music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 2 run playsound minecraft:music_disc.pvwlobbymusictwo music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 2 run scoreboard players set @s lobbymusictimer 8700

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 3 run playsound minecraft:music_disc.pvwlobbymusicthree music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 3 run playsound minecraft:music_disc.pvwlobbymusicthree music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 3 run scoreboard players set @s lobbymusictimer 3200

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 4 run playsound minecraft:music_disc.pvwlobbymusicfour music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 4 run playsound minecraft:music_disc.pvwlobbymusicfour music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 4 run scoreboard players set @s lobbymusictimer 4200

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 5 run playsound minecraft:music_disc.pvwlobbymusicfive music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 5 run playsound minecraft:music_disc.pvwlobbymusicfive music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 5 run scoreboard players set @s lobbymusictimer 4000

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 6 run playsound minecraft:music_disc.pvwlobbymusicsix music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 6 run playsound minecraft:music_disc.pvwlobbymusicsix music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 6 run scoreboard players set @s lobbymusictimer 4400

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic lobbymusictimer matches 7 run playsound minecraft:music_disc.pvwlobbymusicseven music @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic lobbymusictimer matches 7 run playsound minecraft:music_disc.pvwlobbymusicseven music @s ~ ~ ~ 0.25 1 0.25
execute if score #randomlobbymusic lobbymusictimer matches 7 run scoreboard players set @s lobbymusictimer 3200

tag @s remove changelobbymusic