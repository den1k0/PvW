tag @s remove switchteamtopiglin
tag @s remove switchteamtowither

execute at @s unless entity @e[tag=mpas,distance=..1000] run tag @s add cantswitch
tag @s[tag=!ingame] add cantswitch
tellraw @s[tag=cantswitch] [{"text":"You Must Be In A Match To Use /swichteams ","color":"red"}]

execute at @s if entity @n[tag=mpas,distance=..1000,tag=gamemodeinf] run tellraw @s [{"text":"This Gamemode Does Not Support /swichteams","color":"red"}]
execute at @s if entity @n[tag=mpas,distance=..1000,tag=gamemodeph] run tellraw @s [{"text":"This Gamemode Does Not Support /swichteams","color":"red"}]
execute at @s if entity @n[tag=mpas,distance=..1000,tag=gamemodejug] run tellraw @s [{"text":"This Gamemode Does Not Support /swichteams","color":"red"}]

execute at @s[team=piglin] if score @n[tag=mpas,distance=..1000,tag=!gamemodeinf,tag=!gamemodejug,tag=!gamemodeph] piglincount > @n[tag=mpas,distance=..1000,tag=!gamemodeinf,tag=!gamemodejug,tag=!gamemodeph] withercount run tag @s add switchteamtowither
execute at @s[team=wither] if score @n[tag=mpas,distance=..1000,tag=!gamemodeinf,tag=!gamemodejug,tag=!gamemodeph] withercount > @n[tag=mpas,distance=..1000,tag=!gamemodeinf,tag=!gamemodejug,tag=!gamemodeph] piglincount run tag @s add switchteamtopiglin

tellraw @s[tag=switchteamtopiglin] [{"text":"Your ","color":"green"},{"text":"Team ","color":"gold"},{"text":"Will Be Changed After Next ","color":"green"},{"text":"Death","color":"red"}]
tellraw @s[tag=switchteamtowither] [{"text":"Your ","color":"green"},{"text":"Team ","color":"aqua"},{"text":"Will Be Changed After Next ","color":"green"},{"text":"Death","color":"red"}]

tellraw @s[tag=!cantswitch,tag=!switchteamtopiglin,tag=!switchteamtowither] [{"text":"Cannot Change Teams. Opposite Team Has More Or Equal Amount Of Players.","color":"red"}]

tag @s remove cantswitch