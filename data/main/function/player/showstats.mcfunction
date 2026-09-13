tellraw @s [{"text": "Player ID: ","color": "white"},{"score": {"name": "@s","objective": "playerid"},"color": "green"}]
tellraw @s [{"text": "Calling Card: ","color": "white"},{"score": {"name": "@s","objective": "callingcard"}}]
tellraw @s [{"text": ""}]
tellraw @s [{"text": "Total Kills: ","color": "white"},{"score": {"name": "@s","objective": "allkills"},"color": "dark_red"},{"text": " 🗡","color": "dark_red"}]
tellraw @s [{"text": "Total Deaths: ","color": "white"},{"score": {"name": "@s","objective": "alldeaths"},"color": "light_purple"},{"text": " 💀","color": "light_purple"}]
scoreboard players operation @s deathstemp = @s alldeaths
scoreboard players operation @s killstemp = @s allkills
scoreboard players operation @s killstemp *= 100 number
scoreboard players operation @s killstemp /= @s deathstemp
scoreboard players operation @s deathstemp = @s killstemp
scoreboard players operation @s killstemp /= 100 number
scoreboard players operation @s deathstemp %= 100 number
tellraw @s[scores={deathstemp=10..}] [{"text": "Your K/D: "},{"score": {"name": "@s","objective": "killstemp"},"color": "red"},{"text": ".","color": "red"},{"score": {"name": "@s","objective": "deathstemp"},"color": "red"},{"text": " 🗡","color": "red"}]
tellraw @s[scores={deathstemp=..9}] [{"text": "Your K/D: "},{"score": {"name": "@s","objective": "killstemp"},"color": "red"},{"text": ".0","color": "red"},{"score": {"name": "@s","objective": "deathstemp"},"color": "red"},{"text": " 🗡","color": "red"}]
tellraw @s [{"text": ""}]
tellraw @s [{"text": "Headshots: ","color": "white"},{"score": {"name": "@s","objective": "headshotcount"},"color": "red"},{"text": " ☠","color": "red"}]
tellraw @s [{"text": "360's: ","color": "white"},{"score": {"name": "@s","objective": "360count"},"color": "aqua"},{"text": " 🎯","color": "aqua"}]
tellraw @s [{"text": "Airborne Kills: ","color": "white"},{"score": {"name": "@s","objective": "airkillcount"},"color": "aqua"},{"text": " 💨","color": "aqua"}]
tellraw @s [{"text": "Legendary Kills: ","color": "white"},{"score": {"name": "@s","objective": "legendarykillcount"},"color": "gold"},{"text": " 👑","color": "gold"}]