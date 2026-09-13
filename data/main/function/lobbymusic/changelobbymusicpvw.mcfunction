execute store result score #randomlobbymusic3 lobbymusictimer run random value 1..4

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic3 lobbymusictimer matches 1 run playsound minecraft:music_disc.pvwmusicbridge music @s ~ ~ ~ 0.9 1 0.9
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic3 lobbymusictimer matches 1 run playsound minecraft:music_disc.pvwmusicbridge music @s ~ ~ ~ 0.45 1 0.45
execute if score #randomlobbymusic3 lobbymusictimer matches 1 run scoreboard players set @s lobbymusictimer 2600

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic3 lobbymusictimer matches 2 run playsound minecraft:music_disc.pvwmusicpiglinshonor music @s ~ ~ ~ 0.7 1 0.7
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic3 lobbymusictimer matches 2 run playsound minecraft:music_disc.pvwmusicpiglinshonor music @s ~ ~ ~ 0.35 1 0.35
execute if score #randomlobbymusic3 lobbymusictimer matches 2 run scoreboard players set @s lobbymusictimer 4000

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic3 lobbymusictimer matches 3 run playsound minecraft:music_disc.pvwmusicrocketbaza music @s ~ ~ ~ 0.45 1 0.45
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic3 lobbymusictimer matches 3 run playsound minecraft:music_disc.pvwmusicrocketbaza music @s ~ ~ ~ 0.225 1 0.225
execute if score #randomlobbymusic3 lobbymusictimer matches 3 run scoreboard players set @s lobbymusictimer 5100

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic3 lobbymusictimer matches 4 run playsound minecraft:music_disc.pvwmusiclaststand music @s ~ ~ ~ 0.9 1 0.9
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic3 lobbymusictimer matches 4 run playsound minecraft:music_disc.pvwmusiclaststand music @s ~ ~ ~ 0.45 1 0.45
execute if score #randomlobbymusic3 lobbymusictimer matches 4 run scoreboard players set @s lobbymusictimer 5160

tag @s remove changelobbymusic