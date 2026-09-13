scoreboard players add #randomambient timer 1
execute if score #randomambient timer matches 1800.. store result score #randomambient timer2 run random value 1..12
execute if score #randomambient timer2 matches 1.. run function main:ambient/randomambient
execute if score #randomambient timer matches 1800.. run scoreboard players set #randomambient timer 0

scoreboard players add #snowambient timer 1
execute if score #snowambient timer matches 600.. run function main:ambient/randomsnowambient

scoreboard players add #sandambient timer 1
execute if score #sandambient timer matches 600.. as @a at @s if biome ~ ~ ~ #minecraft:is_savanna at @s run playsound minecraft:music_disc.sandambient master @s[tag=ingame] ~ ~ ~ 0.03 1 0.03
execute if score #sandambient timer matches 600.. run scoreboard players set #sandambient timer 0

scoreboard players add #underwaterambient timer 1
execute if score #underwaterambient timer matches 600.. as @a at @s if biome ~ ~ ~ #minecraft:is_ocean at @s run playsound minecraft:ambient.underwater.loop master @s[tag=ingame] ~ ~ ~ 0.3 0.85 0.3
execute if score #underwaterambient timer matches 600.. run scoreboard players set #underwaterambient timer 0

scoreboard players add #weather timer 1
execute if score #weather timer matches 400.. run function main:ambient/weather