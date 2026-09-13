execute unless score @s expcount = @s expcounttemp run scoreboard players set @s expcounttimer 100
execute unless score @s expcount = @s expcounttemp run scoreboard players operation @s expcounttemp = @s expcount
execute at @s unless entity @e[tag=ending,distance=..1000] unless entity @e[tag=nextround,distance=..1000] if score @s expcounttimer matches 100 run title @s title ""
execute if score @s expcounttimer matches 100 run title @s subtitle [{"text": "+","color": "yellow"},{"score": {"name": "@s","objective": "expcount"}}]
execute if score @s expcounttimer matches 100 run title @s[tag=playerhs,tag=!player360,tag=!playerairborne] subtitle [{"text": "+","color": "dark_red"},{"score": {"name": "@s","objective": "expcount"}}]
execute if score @s expcounttimer matches 100 run title @s[tag=!playerhs,tag=player360,tag=!playerairborne] subtitle [{"text": "+","color": "gold"},{"score": {"name": "@s","objective": "expcount"}}]
execute if score @s expcounttimer matches 100 run title @s[tag=!playerhs,tag=!player360,tag=playerairborne] subtitle [{"text": "+","color": "aqua"},{"score": {"name": "@s","objective": "expcount"}}]
execute if score @s expcounttimer matches 100 run title @s[tag=playerhs,tag=player360,tag=playerairborne] subtitle [{"text": "+","color": "light_purple"},{"score": {"name": "@s","objective": "expcount"}}]

scoreboard players remove @s expcounttimer 1
execute if score @s expcounttimer matches ..0 run scoreboard players reset @s expcount
execute if score @s expcounttimer matches ..0 run title @s subtitle ""
execute if score @s expcounttimer matches ..0 run scoreboard players set @s expcounttemp 0