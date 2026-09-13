execute store result score #snowambient random run random value 1..3

execute if score #snowambient random matches 1 as @a at @s if biome ~ ~ ~ #minecraft:is_taiga at @s run playsound minecraft:music_disc.snowambient master @s[tag=ingame] ~ ~ ~ 0.3 0.85 0.3
execute if score #snowambient random matches 1 run scoreboard players set #snowambient timer -120

execute if score #snowambient random matches 2 as @a at @s if biome ~ ~ ~ #minecraft:is_taiga at @s run playsound minecraft:music_disc.snowambient master @s[tag=ingame] ~ ~ ~ 0.3 1 0.3
execute if score #snowambient random matches 2 run scoreboard players set #snowambient timer 0

execute if score #snowambient random matches 3 as @a at @s if biome ~ ~ ~ #minecraft:is_taiga at @s run playsound minecraft:music_disc.snowambient master @s[tag=ingame] ~ ~ ~ 0.3 1.2 0.3
execute if score #snowambient random matches 3 run scoreboard players set #snowambient timer 120