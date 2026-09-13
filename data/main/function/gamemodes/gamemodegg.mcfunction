execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number
execute as @s[tag=mp10as] store result bossbar minecraft:mp10timer value run scoreboard players get @s seconds
execute at @s as @a[distance=..1000] if score @s totalkills >= @n[tag=mpas] Win run tag @n[tag=mpas] add ffaend
execute if score @s timer matches ..0 run tag @s add ffaend
execute at @s as @a[distance=..1000] if score @s totalkills > @n[tag=mpas] temp3 run scoreboard players operation @e[sort=nearest,limit=1,tag=mpas] temp3 = @s totalkills
execute at @s run tag @a[distance=..1000] remove ffafirstplace
execute at @s as @a[distance=..1000] if score @s totalkills = @n[tag=mpas] temp3 run tag @s add ffafirstplace
execute as @s[tag=mp10as] store result bossbar minecraft:mp10firstplace value run scoreboard players get @s temp3
execute as @s[tag=mp10as] at @s run bossbar set minecraft:mp10firstplace name [{"text":"First Place: ","color":"white"},{"selector":"@a[distance=..1000,tag=ffafirstplace]"},{"text":" | Kills: "},{"score":{"name":"@a[distance=..1000,tag=ffafirstplace]","objective":"totalkills"},"color":"dark_red"},{"text":" | Players: ","color":"white"},{"score":{"name":"@s","objective":"playercount"},"color":"yellow"}]
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s if score @s timer matches 6000 run playsound minecraft:music_disc.tdmfiveminutes voice @a[distance=..1000] ~ ~ ~ 0.7 1 0.7
execute at @s run tag @a[distance=..1000] add ggloadout

execute at @s as @a[distance=..1000,scores={playerkill3=1..}] run function main:gamemodes/ggitems
execute at @s as @a[distance=..1000] unless items entity @s hotbar.* * unless items entity @s inventory.* * unless items entity @s weapon.offhand * run function main:gamemodes/ggitems