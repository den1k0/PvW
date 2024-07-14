execute as @e[tag=loadgamemodetdm] run scoreboard players set @s timer 12000
execute as @e[tag=loadgamemodetdm] run scoreboard players set @s timer2 0
execute as @e[tag=loadgamemodetdm] run scoreboard players set @s Piglins 0
execute as @e[tag=loadgamemodetdm] run scoreboard players set @s Withers 0
execute as @e[tag=loadgamemodetdm] run scoreboard players set @s Win 50
execute as @e[tag=loadgamemodetdm] at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add playerassignteam
execute as @e[tag=loadgamemodetdm] at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add ingame
execute as @e[tag=loadgamemodetdm] at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add loadout
execute as @e[tag=loadgamemodetdm] at @s positioned ~ ~ ~-10000 run tag @a[distance=..100] add resetstats
execute as @e[tag=loadgamemodetdm] at @s positioned ~ ~ ~-10000 run tp @a[distance=..100] @s
execute as @e[tag=loadgamemodetdm] run tag @s add gaming
execute as @e[tag=loadgamemodetdm] run tag @s add lockteams
execute as @e[tag=loadgamemodetdm] run tag @s add gamemodetdm
execute as @e[tag=loadgamemodetdm,tag=mp3as] run bossbar set minecraft:mp3piglins max 50
execute as @e[tag=loadgamemodetdm,tag=mp3as] run bossbar set minecraft:mp3withers max 50
execute as @e[tag=loadgamemodetdm,tag=mp3as] run bossbar set minecraft:mp3timer max 600
execute as @e[tag=loadgamemodetdm] run tag @s remove loadgamemodetdm

execute as @e[tag=gamemodetdm] at @s if entity @a[scores={death=1..},team=piglin,distance=..1000] run scoreboard players add @s Withers 1
execute as @e[tag=gamemodetdm] at @s if entity @a[scores={death=1..},team=wither,distance=..1000] run scoreboard players add @s Piglins 1
execute as @e[tag=gamemodetdm,tag=mp3as] store result bossbar minecraft:mp3piglins value run scoreboard players get @s Piglins
execute as @e[tag=gamemodetdm,tag=mp3as] store result bossbar minecraft:mp3withers value run scoreboard players get @s Withers
execute as @e[tag=gamemodetdm] if score @s Piglins >= @s Win run tag @s add piglinswin
execute as @e[tag=gamemodetdm] if score @s Withers >= @s Win run tag @s add witherswin
execute as @e[tag=gamemodetdm,tag=!lockteams] run scoreboard players remove @s timer 1
execute as @e[tag=gamemodetdm] run scoreboard players operation @s seconds = @s timer
execute as @e[tag=gamemodetdm] run scoreboard players operation @s seconds /= 20 number
execute as @e[tag=gamemodetdm,tag=mp3as] store result bossbar minecraft:mp3timer value run scoreboard players get @s seconds
execute as @e[tag=gamemodetdm] if score @s timer matches ..0 if score @s Piglins > @s Withers run tag @s add piglinswin
execute as @e[tag=gamemodetdm] if score @s timer matches ..0 if score @s Piglins < @s Withers run tag @s add witherswin
execute as @e[tag=gamemodetdm] if score @s timer matches ..0 if score @s Piglins = @s Withers run tag @s add tie
execute as @e[tag=gamemodetdm] at @s if score @s timer matches 1200 run playsound minecraft:music_disc.tdmatlaslastminute music @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @e[tag=gamemodetdm] at @s if score @s timer matches 1200 run playsound minecraft:music_disc.tdmoplastmin music @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @e[tag=gamemodetdm] at @s if score @s timer matches 1200 run playsound minecraft:music_disc.tdmabtime voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @e[tag=gamemodetdm] at @s if score @s timer matches 1200 run playsound minecraft:music_disc.tdmmiltime voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @e[tag=gamemodetdm] at @s if score @s timer matches 6000 run playsound minecraft:music_disc.tdmfiveminutes voice @a[distance=..1000] ~ ~ ~ 0.7 1 0.7

execute as @e[tag=gaming] at @s run spawnpoint @a[distance=..1000] ~ ~ ~
execute at @e[tag=gaming] as @a[distance=..1] run tp @s @e[tag=spawn,limit=1,sort=random]
execute as @e[tag=gaming] at @s store result score @s piglincount if entity @a[team=piglin,distance=..1000]
execute as @e[tag=gaming] at @s store result score @s withercount if entity @a[team=wither,distance=..1000]
execute as @e[tag=gaming] if score @s withercount >= @s piglincount as @a[tag=playerassignteam,limit=1,sort=random] run team join piglin @s
execute as @e[tag=gaming] if score @s piglincount >= @s withercount as @a[tag=playerassignteam,limit=1,sort=random,team=!piglin] run team join wither @s
execute as @a[tag=playerassignteam,team=wither] run tag @s remove playerassignteam
execute as @a[tag=playerassignteam,team=piglin] run tag @s remove playerassignteam

execute as @e[tag=piglinswin,tag=!ending] run scoreboard players set @s timer2 0
execute as @e[tag=witherswin,tag=!ending] run scoreboard players set @s timer2 0
execute as @e[tag=tie,tag=!ending] run scoreboard players set @s timer2 0
execute as @e[tag=piglinswin] run tag @s add ending
execute as @e[tag=witherswin] run tag @s add ending
execute as @e[tag=tie] run tag @s add ending

execute as @e[tag=endgame] run tag @s remove gaming
execute as @e[tag=endgame] at @s run tag @a[distance=..1000] remove ingame
execute as @e[tag=endgame] at @s run tag @a[distance=..1000] add pvwdefaultinventory
execute as @e[tag=endgame] at @s run team join Neutral @a[distance=..1000]
execute as @e[tag=endgame] at @s run tp @a[distance=..1000] ~ ~ ~-10000
execute as @e[tag=endgame] run tag @s add clearmap
execute as @e[tag=endgame] run tag @s remove endgame

execute as @e[tag=mp3as] at @s run bossbar set minecraft:mp3piglins players @a[distance=..1000]
execute as @e[tag=mp3as] at @s run bossbar set minecraft:mp3withers players @a[distance=..1000]
execute as @e[tag=mp3as] at @s run bossbar set minecraft:mp3timer players @a[distance=..1000]

execute as @e[tag=lockteams] at @s as @a[distance=..1000,team=piglin] at @e[tag=piglinspawn,limit=1,sort=nearest] run tp @s ~ ~ ~
execute as @e[tag=lockteams] at @s as @a[distance=..1000,team=wither] at @e[tag=witherspawn,limit=1,sort=nearest] run tp @s ~ ~ ~
execute as @e[tag=lockteams] at @s run effect give @a[distance=..1000] invisibility 1 0 true
execute as @e[tag=lockteams] at @s run tag @a[distance=..1000] add removehead
execute as @e[tag=lockteams] run scoreboard players add @s timer2 1
execute as @e[tag=lockteams,scores={timer2=1},tag=gamemodetdm] at @s run title @a[distance=..1000] title {"text":"TEAM DEATHMATCH","color":"yellow"}
execute as @e[tag=lockteams,scores={timer2=1}] at @s run title @a[distance=..1000] actionbar {"text":"5","color":"green"}
execute as @e[tag=lockteams,scores={timer2=10},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmatlasspawn music @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=10},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmopspawn music @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=10}] at @s as @a[scores={classslot7=3},distance=..1000] run tag @s add loadout
execute as @e[tag=lockteams,scores={timer2=20}] at @s run title @a[distance=..1000] actionbar {"text":"4","color":"green"}
execute as @e[tag=lockteams,scores={timer2=20},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmabtdm voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=20},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmmiltdm voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=40}] at @s run title @a[distance=..1000] actionbar {"text":"3","color":"green"}
execute as @e[tag=lockteams,scores={timer2=60}] at @s run title @a[distance=..1000] actionbar {"text":"2","color":"green"}
execute as @e[tag=lockteams,scores={timer2=60}] at @s run title @a[distance=..1000,team=piglin] title {"text":"Piglins","color":"gold"}
execute as @e[tag=lockteams,scores={timer2=60}] at @s run title @a[distance=..1000,team=wither] title {"text":"Withers","color":"aqua"}
execute as @e[tag=lockteams,scores={timer2=80}] at @s run title @a[distance=..1000] actionbar {"text":"1","color":"green"}
execute as @e[tag=lockteams,scores={timer2=100..},tag=gamemodetdm] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @e[tag=lockteams,scores={timer2=100..},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmabgoodtogo neutral @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=100..},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmmilgoodtogo neutral @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=lockteams,scores={timer2=100..}] run tag @s remove lockteams

execute as @e[tag=ending] run scoreboard players add @s timer2 1
execute as @e[tag=ending,tag=piglinswin,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Piglins Won!","color":"gold"}
execute as @e[tag=ending,tag=witherswin,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Withers Won!","color":"aqua"}
execute as @e[tag=ending,tag=tie,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Draw!","color":"yellow"}
execute as @e[tag=ending,scores={timer2=1}] at @s run stopsound @a[distance=..1000]
execute as @e[tag=ending,scores={timer2=5},tag=piglinswin] at @s run playsound minecraft:music_disc.tdmabwin voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=piglinswin] at @s run playsound minecraft:music_disc.tdmwintheme music @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=piglinswin] at @s run playsound minecraft:music_disc.tdmmillost voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=piglinswin] at @s run playsound minecraft:music_disc.tdmlosttheme music @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=witherswin] at @s run playsound minecraft:music_disc.tdmablost voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=witherswin] at @s run playsound minecraft:music_disc.tdmlosttheme music @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=witherswin] at @s run playsound minecraft:music_disc.tdmmilwin voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=witherswin] at @s run playsound minecraft:music_disc.tdmwintheme music @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=tie] at @s run playsound minecraft:music_disc.tdmablost voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=tie] at @s run playsound minecraft:music_disc.tdmlosttheme music @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=tie] at @s run playsound minecraft:music_disc.tdmmillost voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=5},tag=tie] at @s run playsound minecraft:music_disc.tdmlosttheme music @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @e[tag=ending,scores={timer2=100..}] run tag @s remove piglinswin
execute as @e[tag=ending,scores={timer2=100..}] run tag @s remove witherswin
execute as @e[tag=ending,scores={timer2=100..}] run tag @s remove tie
execute as @e[tag=ending,scores={timer2=100..}] run tag @s add endgame
execute as @e[tag=ending,scores={timer2=100..}] run tag @s remove ending
execute as @e[tag=ending] run tag @s remove gamemodetdm
