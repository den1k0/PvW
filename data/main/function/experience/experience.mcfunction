execute as @s[level=..0] run experience set @s 1 levels
execute as @s[level=61..] run experience set @s 60 levels
execute as @s[level=60] run experience set @s 0 points

execute as @s[scores={playerkill3=1..}] run function main:experience/playerkill3

execute as @s[gamemode=!spectator] run function main:experience/temp

execute as @s[tag=rankup] run function main:experience/rankup

execute as @s[scores={expcount=1..}] run function main:experience/expcountdisplay