execute as @s[scores={menu=1..}] run function main:inventory/pvwdefaultinventory
execute as @s unless score @s menu matches 0.. run scoreboard players enable @s menu
execute as @s unless score @s menu matches 0.. run scoreboard players set @s menu 0
execute as @s[scores={menu=1..}] run scoreboard players reset @s menu

execute as @s[scores={leave=1..}] run function main:triggers/leavegame
execute as @s unless score @s leave matches 0.. run scoreboard players enable @s leave
execute as @s unless score @s leave matches 0.. run scoreboard players set @s leave 0
execute as @s[scores={leave=1..}] run scoreboard players reset @s leave

execute as @s[scores={class=1..}] run function main:triggers/class
execute as @s unless score @s class matches 0.. run scoreboard players enable @s class
execute as @s[scores={class=1..}] run scoreboard players reset @s class
tag @s remove dontchangeclass

execute as @s[scores={radio=1..},tag=ingame] run function main:triggers/radio
execute as @s[scores={radio=1..},tag=!ingame] run tellraw @s [{"text":"You Must Be In A Match To Use /radio ","color":"red"}]
execute as @s unless score @s radio matches 0.. run scoreboard players enable @s radio
execute as @s unless score @s radio matches 0.. run scoreboard players set @s radio 0
execute as @s[scores={radio=1..}] run scoreboard players reset @s radio

#execute as @s[scores={duelplayer=1..}] run function main:triggers/duelplayer
#execute as @s unless score @s duelplayer matches 0.. run scoreboard players enable @s duelplayer
#execute as @s unless score @s duelplayer matches 0.. run scoreboard players set @s duelplayer 0
#execute as @s[scores={duelplayer=1..}] run scoreboard players reset @s duelplayer

#execute as @s[scores={duelaccept=1..}] run function main:triggers/duelaccept
#execute as @s unless score @s duelaccept matches 0.. run scoreboard players enable @s duelaccept
#execute as @s unless score @s duelaccept matches 0.. run scoreboard players set @s duelaccept 0
#execute as @s[scores={duelaccept=1..}] run scoreboard players reset @s duelaccept

execute as @s[scores={emote=1..}] run function main:triggers/emote
execute as @s unless score @s emote matches 0.. run scoreboard players enable @s emote
execute as @s unless score @s emote matches 0.. run scoreboard players set @s emote 0

execute as @s[scores={trade=1..},tag=!ingame] run function main:triggers/trade
execute as @s[scores={trade=1..},tag=ingame] run tellraw @s [{"text":"You Must Not Be In A Match To Use /trade ","color":"red"}]
execute as @s unless score @s trade matches 0.. run scoreboard players enable @s trade
execute as @s unless score @s trade matches 0.. run scoreboard players set @s trade 0
execute as @s[scores={trade=1..}] run scoreboard players reset @s trade

execute as @s[scores={switchteams=1..}] run function main:triggers/switchteams
execute as @s unless score @s switchteams matches 0.. run scoreboard players enable @s switchteams
execute as @s unless score @s switchteams matches 0.. run scoreboard players set @s switchteams 0
execute as @s[scores={switchteams=1..}] run scoreboard players reset @s switchteams

execute as @s[scores={stats=1..}] run function main:player/showstats
execute as @s unless score @s stats matches 0.. run scoreboard players enable @s stats
execute as @s unless score @s stats matches 0.. run scoreboard players set @s stats 0
execute as @s[scores={stats=1..}] run scoreboard players reset @s stats

execute as @s[scores={graffiti=1..}] if score @s graffititimer matches 1.. run tellraw @s [{"text":"Graffiti Cooldown...","color":"red"}]
execute as @s[scores={graffiti=1..}] unless score @s graffititimer matches 1.. run function main:triggers/graffiti
execute as @s unless score @s graffiti matches 0.. run scoreboard players enable @s graffiti
execute as @s unless score @s graffiti matches 0.. run scoreboard players set @s graffiti 0
execute as @s[scores={graffiti=1..}] run scoreboard players reset @s graffiti

execute as @s[scores={hourbonus=1..}] run function main:triggers/hourbonus
execute as @s unless score @s hourbonus matches 0.. run scoreboard players enable @s hourbonus
execute as @s unless score @s hourbonus matches 0.. run scoreboard players set @s hourbonus 0
execute as @s[scores={hourbonus=1..}] run scoreboard players reset @s hourbonus