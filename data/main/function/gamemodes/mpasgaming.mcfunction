execute at @s if score @s playercount > @s maxplayercount positioned ~ ~ ~-10000 run tag @a[limit=1,distance=..1000,gamemode=!spectator] add leavegame
execute at @s positioned ~ ~ ~-10000 run scoreboard players operation @a[distance=..1000] matchid = @s matchid
execute as @s[tag=!gamemodejug,tag=!gamemodeph,tag=!gamemodeinf,tag=!gamemodeffa] at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator] add playerassignteam
execute as @s[tag=!gamemodejug,tag=!gamemodeph,tag=!gamemodeinf,tag=gamemodeffa] at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator] add playerassignteamffa
execute as @s[tag=gamemodejug] at @s positioned ~ ~ ~-10000 run team join piglin @a[distance=..1000,gamemode=!spectator]
execute as @s[tag=gamemodeph] at @s positioned ~ ~ ~-10000 run team join wither @a[distance=..1000,gamemode=!spectator]
execute as @s[tag=gamemodeinf] at @s positioned ~ ~ ~-10000 run team join wither @a[distance=..1000,gamemode=!spectator]
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator] add ingame
execute as @s[tag=gamemodesnd] at @s positioned ~ ~ ~-10000 run gamemode spectator @a[distance=..1000]
execute at @s positioned ~ ~ ~-10000 run tellraw @a[distance=..1000,scores={doublexp=1..}] [{"text":"Double XP: ","color":"yellow"},{"text":"Active","color":"green"}]
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator] add resetstats
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator,tag=randomizeloadoutjoin] add randomloadout
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,gamemode=!spectator] add loadoutafterteam
execute at @s positioned ~ ~ ~-10000 as @a[gamemode=!spectator,distance=..1000] positioned ~ ~ ~10000 run playsound music_disc.pvwjoin master @a[distance=..1000] ~ ~ ~ 0.2 1 0.2
execute at @s positioned ~ ~ ~-10000 as @a[gamemode=!spectator,distance=..1000] positioned ~ ~ ~10000 run tellraw @a[distance=..1000] [{"selector": "@s"},{"text":" Joined","color": "green"},{"text":" The Lobby","color": "yellow"}]
execute at @s positioned ~ ~ ~-10000 as @a[gamemode=!spectator,distance=..1000] run tag @s remove playjoinsound
execute at @s positioned ~ ~ ~-10000 run tp @a[distance=..1000] @s