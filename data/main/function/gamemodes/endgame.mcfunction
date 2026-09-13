tag @s remove gaming
tag @s remove firstkill
execute at @s run tag @a[distance=..1000] remove phprop
execute at @s as @a[distance=..1000] run function main:stats/endgamestats
execute at @s run tag @a[distance=..1000] remove ingame
execute at @s run tag @a[distance=..1000] add matchreward
execute at @s run tag @a[distance=..1000] add pvwdefaultinventory
execute at @s run team join Neutral @a[distance=..1000]
execute at @s run gamemode adventure @a[distance=..1000]
execute at @s run scoreboard players remove @a[scores={doublexp=1..},distance=..1000] doublexp 1
execute at @s as @a[scores={doublexp=1..},distance=..1000] run tellraw @s [{"text": "Double XP Available For: ","italic":false,"color":"yellow"},{"score": {"name":"@s","objective": "doublexp"},"color": "green"},{"text": " More Matches","italic":false,"color":"green"}]
execute at @s run tp @a[distance=..1000] ~ ~ ~-10000
scoreboard players set @s temp3 0
tag @s add clearmap
scoreboard players set @s loadmaptimer 0
tag @s add mpwaiting
scoreboard players display numberformat @s mapname fixed {"text":"Loading...","color":"green"}
scoreboard players add @s matchid 10
tag @s remove piglinsroundwin
tag @s remove withersroundwin
tag @s remove endgame
scoreboard players set @s timer2 -160
scoreboard players reset @s temp3