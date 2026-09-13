scoreboard players add @s temp3 1
execute as @s[scores={temp3=1},tag=mp4as] run bossbar set mp4bomb visible false
execute as @s[scores={temp3=1},tag=mp9as] run bossbar set mp9bomb visible false
execute as @s[scores={temp3=1}] at @s run tag @a[distance=..1000] remove bombplanter
execute as @s[scores={temp3=1}] at @s run scoreboard players reset @a[distance=..1000] defusing
execute as @s[scores={temp3=1}] at @s run scoreboard players reset @a[distance=..1000] planting
execute as @s[scores={temp3=1}] at @s run kill @e[tag=sndbd,distance=..1000]
execute as @s[scores={temp3=1}] at @s run kill @e[tag=bomb,distance=..1000]
execute as @s[scores={temp3=1}] at @s run kill @e[tag=bombdrop,distance=..1000]
execute as @s[scores={temp3=1..}] at @s run clear @a[distance=..1000] tnt
execute as @s[scores={temp3=1..}] at @s run clear @a[distance=..1000] shears
execute as @s[scores={temp3=1}] at @s run kill @e[tag=hqbd,distance=..1000]
execute as @s[scores={temp3=1}] at @s run tag @e[tag=hardpoint,distance=..1000] remove hardpointon
execute as @s[scores={temp3=1}] at @s run tag @e[tag=hardpoint,distance=..1000] remove hardpointreal
execute as @s[scores={temp3=1}] at @s run tag @s remove hqzone
execute as @s[scores={temp3=1}] at @s run tag @s remove requesthqzone
execute as @s[scores={temp3=1}] at @s run tag @e[tag=bombplant,distance=..1000] remove bombplantbombed
execute as @s[scores={temp3=1}] at @s run tag @e[tag=bombplant,distance=..1000] remove bombplantdem
execute as @s[scores={temp3=1}] at @s run stopsound @a[distance=..1000] * minecraft:music_disc.ovobombtwo 
execute as @s[scores={temp3=1}] at @s run stopsound @a[distance=..1000] * minecraft:music_disc.ovobombone
execute as @s[scores={temp3=20},tag=withersroundwin] at @s run experience add @a[distance=..1000,team=wither] 10 points
execute as @s[scores={temp3=20},tag=withersroundwin] at @s run scoreboard players add @a[distance=..1000,team=wither] expcount 10
execute as @s[scores={temp3=20},tag=piglinsroundwin] at @s run experience add @a[distance=..1000,team=piglin] 10 points
execute as @s[scores={temp3=20},tag=piglinsroundwin] at @s run scoreboard players add @a[distance=..1000,team=piglin] expcount 10
execute as @s[scores={temp3=20},tag=withersroundwin] at @s run title @a[team=wither,distance=..1000] title {"text":"ROUND WON","bold":true,"color":"green"}
execute as @s[scores={temp3=20},tag=piglinsroundwin] at @s run title @a[team=piglin,distance=..1000] title {"text":"ROUND WON","bold":true,"color":"green"}
execute as @s[scores={temp3=20},tag=withersroundwin] at @s run title @a[team=piglin,distance=..1000] title {"text":"ROUND LOST","bold":true,"color":"red"}
execute as @s[scores={temp3=20},tag=piglinsroundwin] at @s run title @a[team=wither,distance=..1000] title {"text":"ROUND LOST","bold":true,"color":"red"}
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodesnd] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmabwinround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodesnd] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmmillostround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodesnd] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmmilwinround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodesnd] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmablostround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodesnd] if score @s Piglins >= @s Win run tag @s add piglinswin
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodesnd] if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodedem] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmabwinround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodedem] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmmillostround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodedem] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmmilwinround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodedem] at @s if score @s Piglins < @s Win if score @s Withers < @s Win run playsound minecraft:music_disc.tdmablostround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodedem] if score @s Piglins >= @s Win run tag @s add piglinswin
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodedem] if score @s Withers >= @s Win run tag @s add witherswin
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodecw] at @s run playsound minecraft:music_disc.tdmabwinround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=piglinsroundwin,tag=gamemodecw] at @s run playsound minecraft:music_disc.tdmmillostround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodecw] at @s run playsound minecraft:music_disc.tdmmilwinround voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40},tag=withersroundwin,tag=gamemodecw] at @s run playsound minecraft:music_disc.tdmablostround voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=40}] run tag @s remove withersroundwin
execute as @s[scores={temp3=40}] run tag @s remove piglinsroundwin
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run scoreboard players operation @s wtemp = @s Withers
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run scoreboard players operation @s Withers = @s Piglins
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run scoreboard players operation @s Piglins = @s wtemp
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run title @a[distance=..1000] title {"text":"HALFTIME","bold":true,"color":"yellow"}
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run team join Neutral @a[team=piglin,distance=..1000]
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run team join piglin @a[team=wither,distance=..1000]
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run team join wither @a[team=Neutral,distance=..1000]
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run playsound minecraft:music_disc.tdmmilhalftime voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 1 run playsound minecraft:music_disc.tdmabhalftime voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin,tag=gamemodesnd] run scoreboard players add @s bool2 1
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin,tag=gamemodecw] run scoreboard players add @s bool2 1
execute as @s[scores={temp3=115},tag=!piglinswin,tag=!witherswin] at @s if score @s bool2 matches 2.. run scoreboard players set @s bool2 0
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s add lockteams
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run scoreboard players set @s timer 3000
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s remove lastpiglinannounced
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s remove lastwitherannounced
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s remove lasttwopiglinannounced
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s remove lasttwowitherannounced
execute as @s[scores={temp3=160..},tag=!piglinswin,tag=!witherswin] run tag @s add nextroundend
execute as @s[tag=nextroundend] run tag @s remove nextround
execute as @s[tag=nextroundend,tag=gamemodecw] run tag @s add startzone
execute as @s[tag=nextroundend,tag=gamemodecw] run tag @s add hqzone
execute as @s[tag=nextroundend,tag=gamemodecw] run scoreboard players set @s temp3 200
execute as @s[tag=nextroundend,tag=gamemodecw] run scoreboard players set @s wtemp 300
execute as @s[tag=nextroundend,tag=gamemodecw] run scoreboard players set @s timer 4800
execute as @s[tag=nextroundend,tag=gamemodedem] run scoreboard players set @s timer 4800
execute as @s[tag=nextroundend,tag=gamemodedem] if score @s Withers matches 1 if score @s Piglins matches 1 run scoreboard players set @s timer 2400
execute as @s[tag=nextroundend] run scoreboard players set @s timer2 0
execute as @s[tag=nextroundend] run scoreboard players reset @s temp3
execute at @s[tag=nextroundend] run stopsound @a[distance=..1000]
execute as @s[tag=nextroundend] run tag @s remove nextroundend