execute as @s[gamemode=!spectator] run function main:stats/values

execute as @s[tag=!ingame] run function main:stats/defaultvalues

execute unless score @s highestkillstreak matches 0.. run scoreboard players set @s highestkillstreak 0
execute if score @s playerkillstreak > @s highestkillstreak run scoreboard players operation @s highestkillstreak = @s playerkillstreak