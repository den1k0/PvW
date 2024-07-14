execute as @a[level=..0] run experience set @s 1 levels
execute as @a[level=51..] run experience set @s 50 levels
execute as @a[level=50] run experience set @s 0 points
execute as @a[scores={playerkill3=1..}] run experience add @s 4 points
execute as @a[scores={playerkill3=1..}] run scoreboard players remove @s playerkill3 1

execute as @a[gamemode=!spectator] unless score @s exptemp1 matches 0.. run scoreboard players operation @s exptemp1 = @s exptemp2
execute as @a[gamemode=!spectator] store result score @s exptemp2 run experience query @s levels
execute as @a[gamemode=!spectator] if score @s exptemp1 < @s exptemp2 run tag @s add rankup
execute as @a[gamemode=!spectator] if score @s exptemp1 > @s exptemp2 run scoreboard players operation @s exptemp1 = @s exptemp2
execute as @a[tag=rankup] run scoreboard players operation @s exptemp1 = @s exptemp2
execute as @a[tag=rankup] at @s run playsound minecraft:music_disc.lolrankup music @s[level=2..] ~ ~ ~ 0.15 1 0.15
execute as @a[tag=rankup] run title @s[level=2..] actionbar {"text":"LEVEL UP!","color":"green"}
tag @a[tag=rankup] remove rankup