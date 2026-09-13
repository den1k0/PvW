execute as @e[tag=mpas] run function main:gamemodes/loadgamemode

#==============================================================

execute as @e[tag=gamemodetdm] run function main:gamemodes/gamemodetdm

execute as @e[tag=hardpointreal] run function main:gamemodes/hardpointreal

execute as @e[tag=gamemodehq] run function main:gamemodes/gamemodehq2

execute at @e[tag=hardpointreal] if entity @a[team=wither,gamemode=!spectator,distance=..3.125] if entity @a[team=piglin,gamemode=!spectator,distance=..3.125] run team join Neutral @e[tag=hqbd,distance=..1000]
execute at @e[tag=hardpointreal] if entity @e[tag=gamemodehq,distance=..1000] if entity @a[team=wither,gamemode=!spectator,distance=..3.125] if entity @a[team=piglin,gamemode=!spectator,distance=..3.125] run title @a[distance=..8] actionbar {"text":"HEADQUARTERS CONTESTED!","bold":true,"color":"red"}
execute at @e[tag=hardpointreal] if entity @e[tag=gamemodecw,distance=..1000] if entity @a[team=wither,gamemode=!spectator,distance=..3.125] if entity @a[team=piglin,gamemode=!spectator,distance=..3.125] run title @a[distance=..8] actionbar {"text":"STRONGHOLD CONTESTED!","bold":true,"color":"red"}
execute as @e[tag=gamemodehq,scores={count=3}] run scoreboard players set @s count 0

execute as @e[tag=requesthq] run function main:gamemodes/requesthq

execute as @e[tag=requesthqzone] run function main:gamemodes/requesthqzone

execute as @e[tag=hqzone,tag=gamemodehq,scores={timer2=0..}] run scoreboard players remove @s temp3 1
execute as @e[tag=startzone,tag=gamemodecw,scores={timer2=0..}] run scoreboard players remove @s wtemp 1
execute as @e[tag=!startzone,tag=gamemodecw,tag=hqzone] if score @s wtemp matches 400.. run scoreboard players set @s temp3 0
execute as @e[tag=startzone,tag=gamemodecw] if score @s wtemp matches ..0 run scoreboard players set @s temp3 0

execute as @e[tag=hqzone] run function main:gamemodes/hqzone

execute as @e[tag=gamemodehq] run function main:gamemodes/gamemodehq

execute as @e[tag=gamemodeffa] run function main:gamemodes/gamemodeffa

execute as @e[tag=gamemodesnd] run function main:gamemodes/gamemodesnd

execute as @e[tag=bombplant] run function main:gamemodes/bombplant

execute as @a[scores={planting=1..}] run function main:gamemodes/planting

execute at @e[tag=bombdrop] positioned ~0.375 ~ ~0.375 if entity @a[team=piglin,distance=..1.25,gamemode=!spectator] run give @p[team=piglin,gamemode=!spectator] minecraft:tnt[]
execute as @e[tag=bombdrop] at @s positioned ~0.375 ~ ~0.375 if entity @a[team=piglin,distance=..1.25,gamemode=!spectator] run kill @s
team join Neutral @e[tag=bombdrop]

scoreboard players add @e[tag=bomb] timer2 1
execute as @e[tag=bomb] run function main:gamemodes/bomb
execute as @e[tag=gamemodesnd,tag=mp4as] at @s store result bossbar minecraft:mp4bomb value run scoreboard players get @e[tag=bomb,sort=nearest,limit=1,distance=..1000] timer
execute as @e[tag=gamemodedem,tag=mp9as] at @s store result bossbar minecraft:mp9bomb value run scoreboard players get @e[tag=bomb,sort=nearest,limit=1,distance=..1000] timer

execute as @a[scores={defusing=1..}] run function main:gamemodes/defusing

execute as @e[tag=gamemodesnd] run function main:gamemodes/gamemodesndtwo
execute as @a[scores={spectate=1..}] unless score @s spectate matches 6.. run scoreboard players add @s spectate 1
execute as @a[scores={spectate=3},gamemode=spectator] run gamemode adventure @s
execute as @e[tag=gamemodesnd] at @s as @a[scores={spectate=1..5},distance=..1000] run gamemode spectator @s

execute as @e[tag=nextround] run function main:gamemodes/nextround

execute as @e[tag=gamemodecw] run function main:gamemodes/gamemodecw
execute at @e[tag=hardpointreal] if entity @e[tag=gamemodecw,distance=..1000] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.1 ~ 2 0.1 2 0 8 normal

execute as @e[tag=gamemodeinf] run function main:gamemodes/gamemodeinf

execute as @e[tag=infectedwait] at @s if score @s timer matches ..0 run tag @s add infectedrelease
execute as @e[tag=infectedwait] at @s if score @s timer matches ..0 run tag @s remove infectedwait

execute as @e[tag=infectedrelease] run function main:gamemodes/infectedrelease

execute as @e[tag=choosejug] run function main:gamemodes/choosejug

execute as @e[tag=gamemodejug] run function main:gamemodes/gamemodejug

execute as @e[tag=gamemodeph] run function main:gamemodes/gamemodeph
execute at @a[team=piglin,scores={goathorntimer=600..}] run playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1 0
scoreboard players reset @a[scores={goathorntimer=600..}] goathorntimer
execute as @e[tag=phbd] at @s positioned ~0.5 ~ ~0.5 at @a[limit=1,sort=nearest,team=piglin,distance=..5] run tp @s ~-0.5 ~ ~-0.5
execute as @e[tag=gamemodeph] at @s as @a[team=piglin,distance=..1000] at @s unless entity @e[tag=phbd,distance=..1] run summon minecraft:block_display ~ ~ ~ {Tags:["phbd","phbdspawned"],block_state:{Name:"minecraft:grass_block"}}
execute as @e[tag=phbd] at @s unless entity @a[team=piglin,distance=..5] run kill @s[tag=phbd]
execute as @a[team=piglin] at @s positioned ~-0.5 ~ ~-0.5 store result score @s count if entity @e[tag=phbd,distance=..0.01]
execute as @a[team=piglin,scores={count=2..}] at @s positioned ~-0.5 ~ ~-0.5 run kill @e[tag=phbd,sort=nearest,limit=1,distance=..0.5]
execute as @e[tag=phbdspawned] run data modify entity @s teleport_duration set value 1
tag @e[tag=phbdspawned] remove phbdspawned
execute as @e[tag=gamemodeph] at @s run tag @a[distance=..1000,team=piglin,gamemode=!spectator] add phprop
execute as @e[tag=gamemodeph] at @s run scoreboard players set @a[distance=..1000] fieldupgrade 0

execute as @e[tag=lockhunter] run function main:gamemodes/lockhunter

execute as @e[tag=gamemodedem] run function main:gamemodes/gamemodedem

execute as @e[tag=gamemodegg] run function main:gamemodes/gamemodegg

#===========================================================

scoreboard players reset @a death2

execute as @e[tag=outoftime] run function main:gamemodes/outoftime

execute as @e[tag=battlecryquery] run function main:gamemodes/battlecryquery

execute as @e[tag=gaming,tag=!gamemodesnd] at @s run spawnpoint @a[distance=..1000] ~ ~ ~
execute as @e[tag=gaming,tag=gamemodesnd] at @s as @a[distance=..1000] at @s run spawnpoint @s ~ ~ ~
execute as @e[tag=gaming] at @s store result score @s piglincount if entity @a[team=piglin,distance=..1000]
execute as @e[tag=gaming] at @s store result score @s withercount if entity @a[team=wither,distance=..1000]

execute as @e[tag=gaming] at @s if score @s withercount >= @s piglincount as @a[tag=playerassignteam,limit=1,sort=random,scores={prefferedteam=1},distance=..1000] run team join piglin @s
execute as @e[tag=gaming] at @s if score @s piglincount >= @s withercount as @a[tag=playerassignteam,limit=1,sort=random,scores={prefferedteam=2},distance=..1000] run team join wither @s
execute as @a[tag=playerassignteam,team=wither] run tag @s remove playerassignteam
execute as @a[tag=playerassignteam,team=piglin] run tag @s remove playerassignteam

execute as @e[tag=gaming] at @s store result score @s piglincount if entity @a[team=piglin,distance=..1000]
execute as @e[tag=gaming] at @s store result score @s withercount if entity @a[team=wither,distance=..1000]

execute as @e[tag=gaming] at @s if score @s withercount >= @s piglincount as @a[tag=playerassignteam,limit=1,sort=random,distance=..1000] run team join piglin @s
execute as @e[tag=gaming] at @s if score @s piglincount >= @s withercount as @a[tag=playerassignteam,limit=1,sort=random,team=!piglin,distance=..1000] run team join wither @s
execute as @a[tag=playerassignteam,team=wither] run tag @s remove playerassignteam
execute as @a[tag=playerassignteam,team=piglin] run tag @s remove playerassignteam

execute as @e[tag=gaming,tag=gamemodeffa] at @s store result score @s piglincount if entity @a[team=piglinffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodeffa] at @s store result score @s withercount if entity @a[team=witherffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodegg] at @s store result score @s piglincount if entity @a[team=piglinffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodefgg] at @s store result score @s withercount if entity @a[team=witherffa,distance=..1000]

execute as @e[tag=gaming] at @s if score @s withercount >= @s piglincount as @a[tag=playerassignteamffa,limit=1,sort=random,distance=..1000,scores={prefferedteam=1}] run team join piglinffa @s
execute as @e[tag=gaming] at @s if score @s piglincount >= @s withercount as @a[tag=playerassignteamffa,limit=1,sort=random,distance=..1000,scores={prefferedteam=2}] run team join witherffa @s
execute as @a[tag=playerassignteamffa,team=witherffa] run tag @s remove playerassignteamffa
execute as @a[tag=playerassignteamffa,team=piglinffa] run tag @s remove playerassignteamffa

execute as @e[tag=gaming,tag=gamemodeffa] at @s store result score @s piglincount if entity @a[team=piglinffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodeffa] at @s store result score @s withercount if entity @a[team=witherffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodegg] at @s store result score @s piglincount if entity @a[team=piglinffa,distance=..1000]
execute as @e[tag=gaming,tag=gamemodefgg] at @s store result score @s withercount if entity @a[team=witherffa,distance=..1000]

execute as @e[tag=gaming] at @s if score @s withercount >= @s piglincount as @a[tag=playerassignteamffa,limit=1,sort=random,distance=..1000] run team join piglinffa @s
execute as @e[tag=gaming] at @s if score @s piglincount >= @s withercount as @a[tag=playerassignteamffa,limit=1,sort=random,team=!piglinffa,distance=..1000] run team join witherffa @s
execute as @a[tag=playerassignteamffa,team=witherffa] run tag @s remove playerassignteamffa
execute as @a[tag=playerassignteamffa,team=piglinffa] run tag @s remove playerassignteamffa

execute at @e[tag=gaming] as @a[distance=..1,gamemode=!spectator,scores={classslot10=4}] run effect give @s speed 4 2 true
execute at @e[tag=gaming] as @a[distance=..1,gamemode=!spectator] run tag @s add justspawned
execute at @e[tag=gaming] as @e[tag=insertion,distance=..1000] at @s as @a[scores={classslot9=5},distance=..1000,tag=justspawned] if score @s playerid = @n[tag=insertion] playerid run tag @s add insertioneffect
execute at @e[tag=gaming] as @e[tag=insertion,distance=..1000] at @s as @a[scores={classslot9=5},distance=..1000,tag=insertioneffect] if score @s playerid = @n[tag=insertion] playerid run tp @s ~ ~ ~ ~ ~

execute as @a[tag=insertioneffect] run function main:gamemodes/insertioneffect

execute at @e[tag=gaming,tag=gamemodedem] as @a[distance=..1,team=piglin] run tp @s @e[tag=piglinspawn,limit=1,sort=random,distance=..1000]
execute at @e[tag=gaming,tag=gamemodedem] as @a[distance=..1,team=wither] run tp @s @e[tag=witherspawn,limit=1,sort=random,distance=..1000]
execute as @e[tag=spawn] at @s unless entity @a[team=wither,gamemode=adventure,distance=..20] run tag @s add piglinspawnable
execute as @e[tag=spawn] at @s unless entity @a[team=piglin,gamemode=adventure,distance=..20] run tag @s add witherspawnable
execute as @e[tag=spawn] at @s if entity @a[team=wither,gamemode=adventure,distance=..20] run tag @s remove piglinspawnable
execute as @e[tag=spawn] at @s if entity @a[team=piglin,gamemode=adventure,distance=..20] run tag @s remove witherspawnable
execute at @e[tag=gaming] as @a[distance=..1,team=piglin] run tp @s @e[tag=spawn,limit=1,sort=random,tag=piglinspawnable,distance=..1000]
execute as @e[tag=spawn] at @s if entity @a[team=piglin,gamemode=adventure,distance=..20] run tag @s remove witherspawnable
execute as @e[tag=spawn] at @s if entity @a[team=wither,gamemode=adventure,distance=..20] run tag @s remove piglinspawnable
execute at @e[tag=gaming] as @a[distance=..1,team=wither] run tp @s @e[tag=spawn,limit=1,sort=random,tag=witherspawnable,distance=..1000]

execute at @e[tag=gaming,tag=gamemodeffa] as @a[distance=..1,limit=1] run tp @s @e[tag=spawn,limit=1,sort=random,tag=witherspawnable,tag=piglinspawnable,distance=..1000]
execute at @e[tag=gaming,tag=gamemodegg] as @a[distance=..1,limit=1] run tp @s @e[tag=spawn,limit=1,sort=random,tag=witherspawnable,tag=piglinspawnable,distance=..1000]
execute at @e[tag=gaming] unless entity @e[tag=spawn,tag=witherspawnable,tag=piglinspawnable,distance=..1000] as @a[distance=..1,limit=1] run tp @s @e[limit=1,sort=random,tag=spawn,distance=..1000]
execute at @e[tag=gaming] as @a[distance=..1,limit=1] run tp @s @e[limit=1,sort=random,tag=spawn,distance=..1000]

#execute at @e[tag=gaming,tag=gamemodeffa] unless entity @e[tag=spawn,tag=witherspawnable,tag=piglinspawnable,distance=..1000] as @a[distance=..1,limit=1] run tp @s @e[limit=1,sort=random,tag=spawn,distance=..1000]
#execute at @e[tag=gaming,tag=gamemodegg] unless entity @e[tag=spawn,tag=witherspawnable,tag=piglinspawnable,distance=..1000] as @a[distance=..1,limit=1] run tp @s @e[limit=1,sort=random,tag=spawn,distance=..1000]



execute as @a[tag=justspawned,gamemode=!spectator] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0.6 0.6 0.6 0 8 normal
execute as @a[tag=justspawned,gamemode=!spectator] at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.7 1.5 0

execute as @e[tag=gaming] run function main:gamemodes/gaming

execute as @s[tag=announcefirstkill] run function main:gamemodes/announcefirstkill

tag @a remove justspawned
tag @a remove insertioneffect

execute as @e[tag=gaming] run function main:gamemodes/endgames

execute as @e[tag=endgame] run function main:gamemodes/endgame

execute as @e[tag=mpas] run function main:gamemodes/bossbarshow

execute as @e[tag=lockteams] run function main:gamemodes/lockteams

execute as @e[tag=ending] run function main:gamemodes/ending

execute as @e[tag=mpas,tag=gaming] run function main:gamemodes/mpasgaming
execute positioned 0 0 0 as @a[distance=..10,tag=ingame] at @e[tag=mpas,tag=gaming] if score @s matchid = @n[tag=mpas,tag=gaming] matchid run tp @s @n[tag=mpas,tag=gaming]
#/data modify entity @e[tag=mplobby3text,limit=1] text set value '{"text":"SMALL MAPS 24/7","extra":[{"text":"\\nTEAM DEATHMATCH","color":"gold"}],"color":"aqua"}'