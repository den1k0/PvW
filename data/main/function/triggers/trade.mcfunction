scoreboard players operation @s tradeplayerid = @s trade
execute if score @s tradeplayerid = @s playerid run tag @s add sametradeid
execute as @s[tag=sametradeid] run tellraw @s [{"text": "You Can't Trade With Yourself!","color": "red"}]
execute as @s[tag=sametradeid] run scoreboard players reset @s tradeplayerid
execute at @s[tag=!sametradeid] as @a if score @s playerid = @p tradeplayerid run tag @p add tradeplayeronline

tellraw @s[tag=!sametradeid,tag=!tradeplayeronline] [{"text": "The Player Is Not Online!","color": "red"}]
tellraw @s[tag=!sametradeid,tag=tradeplayeronline] [{"text": "Trade Started With Player ","color": "green"},{"score": {"name":"@s","objective": "tradeplayerid"}},{"text": ". Now Choose Item From Your Inventory And Trade!","color": "green"}]
execute at @s[tag=!sametradeid,tag=tradeplayeronline] as @a if score @s playerid = @p[tag=!sametradeid,tag=tradeplayeronline] tradeplayerid run tellraw @s [{"text": "Player ","color": "green"},{"selector": "@p[tag=!sametradeid,tag=tradeplayeronline]"},{"text": " Wants To Trade With You! / Or Gift You Something!","color": "green"}]
execute as @s[tag=!tradeplayeronline] run scoreboard players reset @s tradeplayerid

tag @s remove sametradeid
tag @s remove tradeplayeronline