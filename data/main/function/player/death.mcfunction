execute at @s[tag=switchteamtopiglin] if score @n[tag=mpas] withercount > @n[tag=mpas] piglincount run tag @s add canchangeteam
execute at @s[tag=switchteamtowither] if score @n[tag=mpas] piglincount > @n[tag=mpas] withercount run tag @s add canchangeteam

execute at @s[tag=switchteamtopiglin,tag=canchangeteam] run tellraw @a[distance=..1000] [{"selector":"@s"},{"text": " Changed Team To ","color": "yellow"},{"text": "Piglin","color": "gold"}]
execute at @s[tag=switchteamtowither,tag=canchangeteam] run tellraw @a[distance=..1000] [{"selector":"@s"},{"text": " Changed Team To ","color": "yellow"},{"text": "Wither","color": "aqua"}]
team join piglin @s[tag=switchteamtopiglin,tag=canchangeteam]
team join wither @s[tag=switchteamtowither,tag=canchangeteam]
execute at @s[tag=switchteamtopiglin,tag=!canchangeteam] run tellraw @s [{"text": "Could Not Change Team. Team Is Now Equal. ","color": "red"}]
execute at @s[tag=switchteamtowither,tag=!canchangeteam] run tellraw @s [{"text": "Could Not Change Team. Team Is Now Equal. ","color": "red"}]

tag @s[] add loadout
#execute at @s if entity @n[tag=gamemodegg,distance=..1000] run tag @s add ggloadout
execute at @s[team=wither] if entity @e[tag=gamemodeinf,distance=..1000] run tag @s add infectedloadout
execute as @s[scores={playerkillstreak=10..}] at @s run tellraw @a[distance=..1000] ["",{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Killstreak Ended on "},{"score":{"name":"@s","objective":"playerkillstreak"},"color":"dark_red"},{"text":"🗡","color":"dark_red"}]

execute at @s at @a[distance=..1000] if score @s assistid = @n playerid run tag @n add assistkill
scoreboard players add @a[tag=assistkill] expcount 2
experience add @a[tag=assistkill] 2 points

execute at @s unless score @s assistid matches 1.. if data entity @p[scores={playerkill2=1..},distance=0.01..1000] SelectedItem.components.minecraft:custom_name run tellraw @a[distance=..1000] [{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Was Killed By ","color":"white"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"callingcard"}},{"selector":"@p[scores={playerkill2=1..},distance=0.01..1000]"},{"text":" With ","color":"white"},{"nbt":"SelectedItem.components.minecraft:custom_name","entity":"@p[scores={playerkill2=1..},distance=0.01..1000]","color":"yellow","interpret":true}]
execute at @s unless score @s assistid matches 1.. unless data entity @p[scores={playerkill2=1..},distance=0.01..1000] SelectedItem.components.minecraft:custom_name run tellraw @a[distance=..1000] [{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Was Killed By ","color":"white"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"callingcard"}},{"selector":"@p[scores={playerkill2=1..},distance=0.01..1000]"}]
execute at @s[tag=ingame] unless score @s assistid matches 1.. unless entity @p[scores={playerkill2=1..},distance=0.01..1000] run tellraw @a[distance=..1000] [{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Died","color":"white"}]

execute at @s[scores={assistid=1..}] if data entity @p[scores={playerkill2=1..},distance=0.01..1000] SelectedItem.components.minecraft:custom_name run tellraw @a[distance=..1000] [{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Was Killed By ","color":"white"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"callingcard"}},{"selector":"@p[scores={playerkill2=1..},distance=0.01..1000]"},{"text":" With ","color":"white"},{"nbt":"SelectedItem.components.minecraft:custom_name","entity":"@p[scores={playerkill2=1..},distance=0.01..1000]","color":"yellow","interpret":true},{"text": " + ","color": "green"},{"score":{"name":"@p[tag=assistkill,distance=..1000]","objective":"callingcard"}},{"selector": "@a[tag=assistkill,distance=..1000]"}]
execute at @s[scores={assistid=1..}] unless data entity @p[scores={playerkill2=1..},distance=0.01..1000] SelectedItem.components.minecraft:custom_name run tellraw @a[distance=..1000] [{"score":{"name":"@s","objective":"callingcard"}},{"selector":"@s"},{"text":" Was Killed By ","color":"white"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"callingcard"}},{"selector":"@p[scores={playerkill2=1..},distance=0.01..1000]"},{"text": " + ","color": "green"},{"score":{"name":"@p[tag=assistkill,distance=..1000]","objective":"callingcard"}},{"selector": "@a[tag=assistkill,distance=..1000]"}]

execute at @s if entity @a[scores={playerkill2=1..},distance=0.01..1000] run tellraw @s ["","Enemy Had ",{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"health"},"color":"red"},{"text":" Health","color":"red"}]
scoreboard players set @s actionbarwait 60
execute at @s if entity @a[scores={playerkill2=1..},distance=0.01..1000] run title @s actionbar [{"text":"Killed By ","color":"red"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"callingcard"}},{"selector":"@p[scores={playerkill2=1..},distance=0.01..1000]"},{"text":" | ","color":"red"},{"score":{"name":"@p[scores={playerkill2=1..},distance=0.01..1000]","objective":"health"}},{"text":" Health","color":"red"}]
tag @s remove got1perks
tag @s remove got2perks
tag @s remove got2perksready
tag @s remove aura
tag @s remove uavendereye
execute as @s[scores={deathstreak=3..}] run playsound music_disc.tdmskillissue voice @s ~ ~ ~ 1 1 1
execute at @s run tag @a[distance=..1000] remove lastkilled
tag @s add lastkilled
scoreboard players set @s[scores={classslot12=1}] killstreak 0
scoreboard players set @s[scores={classslot12=3}] killstreak 0
execute as @s[tag=playerhsme] run tag @a[scores={playerkill2=1..}] add playerhs
execute at @s as @e[distance=..1000,tag=c4] if score @s playerid = @a[sort=nearest,limit=1,scores={death=1..}] playerid run kill @s

scoreboard players set @s playerkillstreak 0
scoreboard players reset @s shieldbash
scoreboard players reset @s shieldtemp
scoreboard players reset @s assistid
scoreboard players reset @s attackerid
scoreboard players reset @s attackertempid
scoreboard players reset @s assisttemp
scoreboard players set @s damagedealtperlife 0
#execute as @s[scores={factiondeathstreak=4}] run tellraw @s [{"text": "Your Faction Will Change Next ","color":"dark_purple"},{"text":"Death","color": "red"}]
scoreboard players reset @s death

tag @a[tag=assistkill] remove assistkill
tag @s remove switchteamtopiglin
tag @s remove switchteamtowither
tag @s remove canchangeteam