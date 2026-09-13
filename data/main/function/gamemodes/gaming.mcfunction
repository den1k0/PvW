execute as @s[tag=!firstkill,tag=!lockteams] at @s if entity @a[scores={totalkills=1..},distance=..1000] run tag @s add announcefirstkill
execute as @s[tag=!gamemodecw] at @s if score @s timer matches 6001 as @a[distance=..1000] at @s if biome ~ ~ ~ #minecraft:is_nether run stopsound @s

scoreboard players add @s mapmusic 1

execute at @s[scores={random=1,mapmusic=400..}] at @n[tag=bombplant] run playsound minecraft:music_disc.pvwchurchmusic master @a[distance=..1000] ~ ~8 ~ 1.7 1 0
execute as @s[scores={random=1,mapmusic=400..}] run scoreboard players reset @s mapmusic

execute at @s[scores={random=7,mapmusic=2400..}] run playsound minecraft:music_disc.chirp master @a ~122 ~17 ~47 0.15 2 0
execute as @s[scores={random=7,mapmusic=2400..}] run scoreboard players reset @s mapmusic

execute as @s[scores={mapmusic=2400..}] run scoreboard players reset @s mapmusic