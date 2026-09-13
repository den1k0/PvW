execute store result score #randomlobbymusic2 lobbymusictimer run random value 1..5

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic2 lobbymusictimer matches 1 run playsound minecraft:music_disc.jjpwarost music @s ~ ~ ~ 0.4 1 0.4
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic2 lobbymusictimer matches 1 run playsound minecraft:music_disc.jjpwarost music @s ~ ~ ~ 0.2 1 0.2
execute if score #randomlobbymusic2 lobbymusictimer matches 1 run scoreboard players set @s lobbymusictimer 2900

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic2 lobbymusictimer matches 2 run playsound minecraft:music_disc.jjswarost music @s ~ ~ ~ 0.4 1 0.4
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic2 lobbymusictimer matches 2 run playsound minecraft:music_disc.jjswarost music @s ~ ~ ~ 0.2 1 0.2
execute if score #randomlobbymusic2 lobbymusictimer matches 2 run scoreboard players set @s lobbymusictimer 2900

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic2 lobbymusictimer matches 3 run playsound minecraft:music_disc.ovomelancholy music @s ~ ~ ~ 0.45 1 0.45
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic2 lobbymusictimer matches 3 run playsound minecraft:music_disc.ovomelancholy music @s ~ ~ ~ 0.225 1 0.225
execute if score #randomlobbymusic2 lobbymusictimer matches 3 run scoreboard players set @s lobbymusictimer 6300

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic2 lobbymusictimer matches 4 run playsound minecraft:music_disc.ovosonicrailways music @s ~ ~ ~ 0.4 1 0.4
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic2 lobbymusictimer matches 4 run playsound minecraft:music_disc.ovosonicrailways music @s ~ ~ ~ 0.2 1 0.2
execute if score #randomlobbymusic2 lobbymusictimer matches 4 run scoreboard players set @s lobbymusictimer 4100

execute as @s[tag=musicvolume100] at @s if score #randomlobbymusic2 lobbymusictimer matches 5 run playsound minecraft:music_disc.extractionpoint music @s ~ ~ ~ 0.45 1 0.45
execute as @s[tag=musicvolume50] at @s if score #randomlobbymusic2 lobbymusictimer matches 5 run playsound minecraft:music_disc.extractionpoint music @s ~ ~ ~ 0.225 1 0.225
execute if score #randomlobbymusic2 lobbymusictimer matches 5 run scoreboard players set @s lobbymusictimer 4300

tag @s remove changelobbymusic