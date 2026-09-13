tellraw @s [{"text": "Your Damage This Match: "},{"score": {"name": "@s","objective": "totaldamagedealt"},"color": "red"},{"text": " Health","color": "red"}]
execute unless score @s totaldeaths matches 1.. run scoreboard players set @s totaldeaths 1
scoreboard players operation @s deathstemp = @s totaldeaths
scoreboard players operation @s killstemp = @s totalkills
scoreboard players operation @s killstemp *= 100 number
scoreboard players operation @s killstemp /= @s deathstemp
scoreboard players operation @s deathstemp = @s killstemp
scoreboard players operation @s killstemp /= 100 number
scoreboard players operation @s deathstemp %= 100 number
tellraw @s[scores={deathstemp=10..}] [{"text": "Your K/D: "},{"score": {"name": "@s","objective": "killstemp"},"color": "red"},{"text": ".","color": "red"},{"score": {"name": "@s","objective": "deathstemp"},"color": "red"},{"text": " 🗡","color": "red"}]
tellraw @s[scores={deathstemp=..9}] [{"text": "Your K/D: "},{"score": {"name": "@s","objective": "killstemp"},"color": "red"},{"text": ".0","color": "red"},{"score": {"name": "@s","objective": "deathstemp"},"color": "red"},{"text": " 🗡","color": "red"}]
tellraw @s [{"text": "Highest Killstreak: "},{"score": {"name": "@s","objective": "highestkillstreak"},"color": "red"},{"text": " 🗡","color": "red"}]