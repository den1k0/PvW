execute as @s[scores={timer2=-160..0},tag=mappreview] run function main:gamemodes/mappreview

scoreboard players add @s bool 1
execute as @s[scores={bool=1,timer2=1..},tag=!lockteamsffa] at @s as @a[distance=..1000,team=piglin] at @e[tag=piglinspawn,limit=1,sort=nearest,distance=..1000] run tp @s ~ ~0.001 ~
execute as @s[scores={bool=1,timer2=1..},tag=!lockteamsffa] at @s as @a[distance=..1000,team=wither] at @e[tag=witherspawn,limit=1,sort=nearest,distance=..1000] run tp @s ~ ~0.001 ~
execute as @s[scores={bool=1,timer2=1..},tag=lockteamsffa] at @s as @a[distance=..1000,team=piglinffa] at @s at @e[tag=spawn,limit=1,sort=nearest,distance=..1000] run tp @s ~ ~0.001 ~
execute as @s[scores={bool=1,timer2=1..},tag=lockteamsffa] at @s as @a[distance=..1000,team=witherffa] at @s at @e[tag=spawn,limit=1,sort=nearest,distance=..1000] run tp @s ~ ~0.001 ~
execute as @s[scores={timer2=1},tag=lockteamsffa,tag=gamemodeinf] at @s as @a[distance=..1000] run tp @s ~ ~ ~
execute as @s[scores={bool=1,timer2=2..},tag=lockteamsffa,tag=gamemodeinf] at @s as @a[distance=..1000,team=piglin] at @s at @e[tag=spawn,limit=1,sort=nearest,distance=..1000] run tp @s ~ ~0.001 ~

execute if score @s bool matches 3.. run scoreboard players set @s bool 0
execute at @s run effect give @a[distance=..1000] invisibility 1 0 true
execute at @s run tag @a[distance=..1000] add removehead
scoreboard players add @s timer2 1
execute as @s[scores={timer2=1}] at @s run tellraw @a[distance=..1000,scores={doublexp=1..}] [{"text":"Double XP: ","color":"yellow"},{"text":"Active","color":"green"}]
execute as @s[scores={timer2=1},tag=gamemodesnd] at @s as @a[gamemode=spectator,distance=..1000,tag=ingame] run gamemode adventure
execute as @s[scores={timer2=1},tag=gamemodesnd] at @s as @a[distance=..1000] run effect give @s instant_health 3 3 true
execute as @s[scores={timer2=1},tag=gamemodesnd] at @s as @a[distance=..1000] run effect give @s saturation 3 3 true
execute as @s[scores={timer2=1},tag=gamemodecw] at @s as @a[distance=..1000] run effect give @s instant_health 3 3 true
execute as @s[scores={timer2=1},tag=gamemodecw] at @s as @a[distance=..1000] run effect give @s saturation 3 3 true
execute as @s[scores={timer2=1},tag=gamemodedem] at @s as @a[distance=..1000] run effect give @s instant_health 3 3 true
execute as @s[scores={timer2=1},tag=gamemodedem] at @s as @a[distance=..1000] run effect give @s saturation 3 3 true
execute as @s[scores={timer2=1},tag=gamemodetdm] at @s run title @a[distance=..1000] title {"text":"TEAM DEATHMATCH","color":"yellow"}
execute as @s[scores={timer2=1},tag=gamemodehq] at @s run title @a[distance=..1000] title {"text":"HEADQUARTERS","color":"yellow"}
execute as @s[scores={timer2=1},tag=gamemodeffa] at @s run title @a[distance=..1000] title {"text":"FREE FOR ALL","color":"red"}
execute as @s[scores={timer2=1},tag=gamemodesnd] at @s run title @a[distance=..1000] title {"text":"SEARCH AND DESTROY","color":"blue"}
execute as @s[scores={timer2=1},tag=gamemodecw] at @s run title @a[distance=..1000] title {"text":"CASTLE WARS","color":"light_purple"}
execute as @s[scores={timer2=1},tag=gamemodeinf] at @s run title @a[distance=..1000] title {"text":"INFECTED","color":"dark_aqua"}
execute as @s[scores={timer2=1},tag=gamemodejug] at @s run title @a[distance=..1000] title {"text":"JUGGERNAUT","color":"dark_purple"}
execute as @s[scores={timer2=1},tag=gamemodeph] at @s run title @a[distance=..1000] title {"text":"PROP HUNT","color":"dark_green"}
execute as @s[scores={timer2=1},tag=gamemodedem] at @s run title @a[distance=..1000] title {"text":"DEMOLITION","color":"red"}
execute as @s[scores={timer2=1},tag=gamemodegg] at @s run title @a[distance=..1000] title {"text":"GUNGAME","color":"red"}
execute as @s[scores={timer2=1},tag=gamemodesnd] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={timer2=1},tag=gamemodecw] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={timer2=1},tag=gamemodedem] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={timer2=1},tag=gamemodegg] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={timer2=1}] at @s run title @a[distance=..1000] actionbar {"text":"5","color":"green"}
execute as @s[scores={timer2=1}] at @s run scoreboard players set @a[distance=..1000] actionbarwait 160
execute as @s[scores={timer2=1}] at @s as @a[scores={classslot10=4},distance=..1000] run effect give @s speed 9 2 true
execute as @s[scores={timer2=10}] at @s as @a[team=piglin,distance=..1000,scores={piglinteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmatlasspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=wither,distance=..1000,scores={witherteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmopspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=piglin,distance=..1000,scores={piglinteamfaction=2}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwinnercirclespawn music @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=10}] at @s as @a[team=wither,distance=..1000,scores={witherteamfaction=2}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.qgignspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=piglin,distance=..1000,scores={piglinteamfaction=3}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwdeltaspawn music @s ~ ~ ~ 0.6 1 0.6
execute as @s[scores={timer2=10}] at @s as @a[team=wither,distance=..1000,scores={witherteamfaction=3}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwspetsnazspawn music @s ~ ~ ~ 0.6 1 0.6
execute as @s[scores={timer2=10}] at @s as @a[team=piglinffa,distance=..1000,scores={piglinteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmatlasspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=witherffa,distance=..1000,scores={witherteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmopspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=piglinffa,distance=..1000,scores={piglinteamfaction=2}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwinnercirclespawn music @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=10}] at @s as @a[team=witherffa,distance=..1000,scores={witherteamfaction=2}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.qgignspawn music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=10}] at @s as @a[team=piglinffa,distance=..1000,scores={piglinteamfaction=3}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwdeltaspawn music @s ~ ~ ~ 0.6 1 0.6
execute as @s[scores={timer2=10}] at @s as @a[team=witherffa,distance=..1000,scores={witherteamfaction=3}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwspetsnazspawn music @s ~ ~ ~ 0.6 1 0.6

execute as @s[scores={timer2=10}] at @s as @a[team=piglin,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasatlasspawn music @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=10}] at @s as @a[team=wither,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasopspawn music @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=10}] at @s as @a[team=piglinffa,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasatlasspawn music @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=10}] at @s as @a[team=witherffa,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasopspawn music @s ~ ~ ~ 0.7 1 0.7

execute as @s[scores={timer2=5}] at @s as @a[scores={classslot7=3},distance=..1000] run tag @s add loadout
execute as @s[scores={timer2=20}] at @s run title @a[distance=..1000] actionbar {"text":"4","color":"green"}
execute as @s[scores={timer2=20},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmabtdm voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmmiltdm voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodehq] at @s run playsound minecraft:music_disc.tdmabhq voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodehq] at @s run playsound minecraft:music_disc.tdmmilhq voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodeffa] at @s run playsound minecraft:music_disc.tdmabffa voice @a[team=piglinffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodeffa] at @s run playsound minecraft:music_disc.tdmmilffa voice @a[team=witherffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodesnd] at @s run playsound minecraft:music_disc.tdmabsnd voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodesnd] at @s run playsound minecraft:music_disc.tdmmilsnd voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodecw] at @s run playsound minecraft:music_disc.tfcastlewars voice @a[distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={timer2=20},tag=gamemodeinf] at @s run playsound minecraft:music_disc.orinfected voice @a[distance=..1000] ~ ~ ~ 3 1 1
execute as @s[scores={timer2=20},tag=gamemodejug] at @s run playsound minecraft:music_disc.orjuggamemode voice @a[distance=..1000] ~ ~ ~ 2.5 1 1
execute as @s[scores={timer2=20},tag=gamemodeph] at @s run playsound minecraft:music_disc.wrzprophunt voice @a[distance=..1000] ~ ~ ~ 1.5 1 1
execute as @s[scores={timer2=20},tag=gamemodedem] at @s run playsound minecraft:music_disc.warabzombiegamemode voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodedem] at @s run playsound minecraft:music_disc.warmilzombiegamemode voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodegg] at @s run playsound minecraft:music_disc.warabzombiegamemode voice @a[team=piglinffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=20},tag=gamemodegg] at @s run playsound minecraft:music_disc.warmilzombiegamemode voice @a[team=witherffa,distance=..1000] ~ ~ ~ 0.7 1 0.7

execute as @s[scores={timer2=40}] at @s run title @a[distance=..1000] actionbar {"text":"3","color":"green"}
execute as @s[scores={timer2=40},tag=gamemodesnd] at @s run give @a[distance=..1000,team=wither] shears[custom_name={"text":"DEFUSER","color":"aqua","italic": false},enchantment_glint_override=true]
execute as @s[scores={timer2=40},tag=gamemodesnd] at @s run give @a[distance=..1000,team=piglin,sort=random,limit=1] tnt[custom_name={"text":"BOMB","color":"red","italic": false},enchantment_glint_override=true]
execute as @s[scores={timer2=60}] at @s run title @a[distance=..1000] actionbar {"text":"2","color":"green"}
execute as @s[scores={timer2=60}] at @s run title @a[distance=..1000,team=piglin] title {"text":"Piglins","color":"gold"}
execute as @s[scores={timer2=60}] at @s run title @a[distance=..1000,team=wither] title {"text":"Withers","color":"aqua"}
execute as @s[scores={timer2=60}] at @s run title @a[distance=..1000,team=piglinffa] title {"text":"Piglins","color":"gold"}
execute as @s[scores={timer2=60}] at @s run title @a[distance=..1000,team=witherffa] title {"text":"Withers","color":"aqua"}

execute as @s[scores={timer2=60},tag=gamemodedem] at @s if score @s Withers matches 1 if score @s Piglins matches 1 run tellraw @a[distance=..1000] {"text":"FINAL ROUND! TIME HAS BEEN HALFED!","bold":true,"color":"red"}
execute as @s[scores={timer2=60},tag=gamemodedem] at @s if score @s Withers matches 1 if score @s Piglins matches 1 run title @a[distance=..1000] title {"text":"FINAL ROUND","bold":true,"color":"yellow"}
execute as @s[scores={timer2=60},tag=gamemodesnd] at @s if score @s Withers matches 5 run title @a[distance=..1000] title {"text":"FINAL ROUND","bold":true,"color":"yellow"}
execute as @s[scores={timer2=60},tag=gamemodesnd] at @s if score @s Piglins matches 5 run title @a[distance=..1000] title {"text":"FINAL ROUND","bold":true,"color":"yellow"}
execute as @s[scores={timer2=60},tag=gamemodedem] at @s if score @s Piglins matches 1 if score @s Withers matches 1 as @a[distance=..1000] at @s run playsound minecraft:music_disc.tffinalround voice @s ~ ~ ~ 2 1 1
execute as @s[scores={timer2=60},tag=gamemodesnd] at @s if score @s Piglins matches 5 unless score @s Withers matches 5 as @a[distance=..1000] at @s run playsound minecraft:music_disc.tffinalround voice @s ~ ~ ~ 2 1 1
execute as @s[scores={timer2=60},tag=gamemodesnd] at @s unless score @s Piglins matches 5 if score @s Withers matches 5 as @a[distance=..1000] at @s run playsound minecraft:music_disc.tffinalround voice @s ~ ~ ~ 2 1 1
execute as @s[scores={timer2=60},tag=gamemodesnd] at @s if score @s Piglins matches 5 if score @s Withers matches 5 as @a[distance=..1000] at @s run playsound minecraft:music_disc.tffinalround voice @s ~ ~ ~ 2 1 1

execute as @s[scores={timer2=80}] at @s run title @a[distance=..1000] actionbar {"text":"1","color":"green"}
execute as @s[scores={timer2=100..},tag=gamemodetdm] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmabgoodtogo voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodetdm] at @s run playsound minecraft:music_disc.tdmmilgoodtogo voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodehq] at @s run title @a[distance=..1000] actionbar {"text":"SECURE THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodehq] at @s run playsound minecraft:music_disc.tdmabdefobj voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodehq] at @s run playsound minecraft:music_disc.tdmmildefobj voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodeffa] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodeffa] at @s run playsound minecraft:music_disc.tdmabgoodtogo voice @a[team=piglinffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodeffa] at @s run playsound minecraft:music_disc.tdmmilgoodtogo voice @a[team=witherffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodesnd] at @s run title @a[distance=..1000,team=piglin] actionbar {"text":"DESTROY THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodesnd] at @s run title @a[distance=..1000,team=wither] actionbar {"text":"DEFEND THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodesnd] at @s run playsound minecraft:music_disc.tdmabdesobj voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodesnd] at @s run playsound minecraft:music_disc.tdmmildefobj voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodecw] at @s run title @a[distance=..1000,team=piglin] actionbar {"text":"DEFEND THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodecw] at @s run title @a[distance=..1000,team=wither] actionbar {"text":"SECURE THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodecw] at @s run playsound minecraft:music_disc.tdmabdefobj voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodecw] at @s run playsound minecraft:music_disc.tfcastlewhattodo voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={timer2=100..},tag=gamemodeinf] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodeinf] at @s run playsound minecraft:music_disc.orinfectedwhattodo voice @a[distance=..1000] ~ ~ ~ 3 1 1
execute as @s[scores={timer2=100..},tag=gamemodejug] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodejug] at @s run playsound minecraft:music_disc.orjuggernotgot voice @a[distance=..1000,team=piglin] ~ ~ ~ 1 1 1
execute as @s[scores={timer2=100..},tag=gamemodejug] at @s run playsound minecraft:music_disc.tdmmilgoodtogo voice @a[distance=..1000,team=wither] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodeph] at @s run title @a[distance=..1000,team=piglin] actionbar {"text":"DEFEND THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodeph] at @s run title @a[distance=..1000,team=wither] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodeph] at @s run playsound minecraft:music_disc.tdmabdefobj voice @a[distance=..1000,team=piglin] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodeph] at @s run playsound minecraft:music_disc.tfelemall voice @a[distance=..1000,team=wither] ~ ~ ~ 1 1 1
execute as @s[scores={timer2=100..},tag=gamemodedem] at @s run title @a[distance=..1000,team=piglin] actionbar {"text":"DESTROY THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodedem] at @s run title @a[distance=..1000,team=wither] actionbar {"text":"DEFEND THE OBJECTIVE!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodedem] at @s run playsound minecraft:music_disc.tdmabdesobj voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodedem] at @s run playsound minecraft:music_disc.tdmmildefobj voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodegg] at @s run title @a[distance=..1000] actionbar {"text":"NEUTRALIZE THE ENEMY!","bold":true,"color":"red"}
execute as @s[scores={timer2=100..},tag=gamemodegg] at @s run playsound minecraft:music_disc.tdmabgoodtogo voice @a[team=piglinffa,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=100..},tag=gamemodegg] at @s run playsound minecraft:music_disc.tdmmilgoodtogo voice @a[team=witherffa,distance=..1000] ~ ~ ~ 0.7 1 0.7

execute as @s[scores={timer2=100},tag=gamemodesnd] at @s at @e[distance=..1000,tag=bombplant] run summon minecraft:block_display ~-0.95 ~ ~-0.95 {block_state:{Name:"minecraft:netherite_block"},Tags:["sndbd"],Glowing:1b}
execute as @s[scores={timer2=100},tag=gamemodesnd] at @s as @e[tag=sndbd,distance=..1000] run data modify entity @s transformation.scale set value [1.9f,0.125f,1.9f]
execute as @s[scores={timer2=100},tag=gamemodedem] at @s as @e[distance=..1000,tag=bombplant,sort=random,limit=1,tag=!bombplantbombed] run tag @s add bombplantdem
execute as @s[scores={timer2=100},tag=gamemodedem] at @s at @e[distance=..1000,tag=bombplantdem,tag=!bombplantbombed] run summon minecraft:block_display ~-0.95 ~ ~-0.95 {block_state:{Name:"minecraft:netherite_block"},Tags:["sndbd"],Glowing:1b}
execute as @s[scores={timer2=100},tag=gamemodedem] at @s as @e[tag=sndbd,distance=..1000] run data modify entity @s transformation.scale set value [1.9f,0.125f,1.9f]

execute as @s[scores={timer2=100..}] run scoreboard players set @s bool 0
execute as @s[scores={timer2=100..},tag=!gamemodecw,tag=!gamemodehq,tag=!gamemodesnd] run tag @s add battlecryquery
execute as @s[scores={timer2=100..}] run tag @s remove lockteamsffa
execute as @s[scores={timer2=100..}] run tag @s remove lockteams