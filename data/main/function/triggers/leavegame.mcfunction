execute as @s run function main:stats/resetstats
tag @s add pvwdefaultinventory
execute at @s[tag=ingame,tag=challengebottlewinmatchxp] if entity @e[tag=mpas,distance=..1000] run function main:challenges/challengebottlewinmatchxplost
execute at @s[tag=ingame] run playsound music_disc.pvwleave master @a[distance=..1000] ~ ~ ~ 0.2 1 0.2
execute at @s[tag=ingame] run particle poof ~ ~1 ~ 0.3 0.4 0.3 0 60
execute at @s[tag=ingame] run tellraw @a[distance=..1000] [{"selector": "@s"},{"text":" Left","color": "red"},{"text":" The Lobby","color": "yellow"}]
execute at @s[tag=!ingame] positioned ~ ~ ~10000 if entity @e[tag=mpas,distance=..1000] positioned ~ ~ ~-10000 run playsound music_disc.pvwleave master @a[distance=..1000] ~ ~ ~ 0.2 1 0.2
execute at @s[tag=!ingame] positioned ~ ~ ~10000 if entity @e[tag=mpas,distance=..1000] positioned ~ ~ ~-10000 run particle poof ~ ~1 ~ 0.3 0.4 0.3 0 60
execute at @s[tag=!ingame] positioned ~ ~ ~10000 if entity @e[tag=mpas,distance=..1000] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] [{"selector": "@s"},{"text":" Left","color": "red"},{"text":" The Lobby","color": "yellow"}]
execute positioned 0 0 -10000 if entity @s[distance=..1000] run tag @s add tptopvwmainlobby
execute positioned 10000 0 0 if entity @s[distance=..1000] run tag @s add tptopvwmainlobby
execute positioned 0 0 10000 if entity @s[distance=..1000] run tag @s add tptompmainlobby
execute at @s if entity @e[tag=mpas,distance=..1000] run tag @s add tptompmainlobby
execute at @s positioned ~ ~ ~10000 if entity @e[tag=mpas,distance=..1000] run tag @s add tptompmainlobby
execute at @s unless entity @e[type=!player,distance=..1000,tag=!tptompmainlobby] run tag @s add tptopvwmainlobby
tp @s[tag=tptopvwmainlobby] 0 0 0 -90 0
tp @s[tag=tptompmainlobby] 10000 0 0 -90 0
tag @s remove tptompmainlobby
tag @s remove tptopvwmainlobby
team join Neutral
scoreboard players remove @s[tag=ingame,scores={doublexp=1..}] doublexp 1
tellraw @s[tag=ingame,scores={doublexp=1..}] [{"text": "Double XP Available For: ","italic":false,"color":"yellow"},{"score": {"name":"@s","objective": "doublexp"},"color": "green"},{"text": " More Matches","italic":false,"color":"green"}]
tag @s remove ingame
tag @s remove leavegame
tellraw @s[tag=hourbonusavailable] [{"text":"You Have Received Your Hourly Gametime Bonus! Type /bonus To Get It!","color":"green"}]
playsound minecraft:block.note_block.bell master @s[tag=hourbonusavailable] ~ ~ ~ 1 1 1