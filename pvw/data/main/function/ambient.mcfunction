scoreboard players add #randomambient timer 1
execute if score #randomambient timer matches 1800.. store result score #randomambient timer2 run random value 1..4
execute if score #randomambient timer2 matches 1 as @a at @s run playsound minecraft:music_disc.ormidleosttwo music @s[tag=ingame] ~ ~ ~ 0.2 1 0.2
execute if score #randomambient timer2 matches 2 as @a at @s run playsound minecraft:music_disc.ovoingamemusic music @s[tag=ingame] ~ ~ ~ 0.23 1 0.23
execute if score #randomambient timer2 matches 3 as @a at @s run playsound minecraft:music_disc.ormidleostone music @s[tag=ingame] ~ ~ ~ 0.2 1 0.2
execute if score #randomambient timer matches 1800.. run scoreboard players set #randomambient timer2 0
execute if score #randomambient timer matches 1800.. run scoreboard players set #randomambient timer 0