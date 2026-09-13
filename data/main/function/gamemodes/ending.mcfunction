scoreboard players add @s timer2 1
execute as @s[tag=piglinswin,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Piglins Won!","color":"gold"}
execute as @s[tag=witherswin,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Withers Won!","color":"aqua"}
execute as @s[tag=tie,scores={timer2=1}] at @s run title @a[distance=..1000] title {"text":"Draw!","color":"yellow"}
execute as @s[tag=ffaend,scores={timer2=1}] at @s run title @a[distance=..1000] title [{"selector": "@a[tag=ffawinner]"},{"text":" Won!"}]
execute as @s[scores={timer2=1}] at @s run stopsound @a[distance=..1000]
execute as @s[scores={timer2=1},tag=piglinswin] at @s run scoreboard players set @a[team=wither,distance=..1000] winstreak 0
execute as @s[scores={timer2=1},tag=piglinswin] at @s run scoreboard players add @a[team=piglin,distance=..1000] winstreak 1
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=piglin,distance=..1000] run playsound minecraft:music_disc.tdmabwin voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=piglin,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmwintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=piglin,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaswintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=wither,distance=..1000] run playsound minecraft:music_disc.tdmmillost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=wither,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmlosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=piglinswin] at @s as @a[team=wither,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaslosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=1},tag=witherswin] at @s run scoreboard players set @a[team=piglin,distance=..1000] winstreak 0
execute as @s[scores={timer2=1},tag=witherswin] at @s run scoreboard players add @a[team=wither,distance=..1000] winstreak 1
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=piglin,distance=..1000] run playsound minecraft:music_disc.tdmablost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=piglin,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmlosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=piglin,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaslosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=wither,distance=..1000] run playsound minecraft:music_disc.tdmmilwin voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=wither,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmwintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=witherswin] at @s as @a[team=wither,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaswintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=tie] at @s as @a[team=piglin,distance=..1000] run playsound minecraft:music_disc.tdmablost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=tie] at @s as @a[team=piglin,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmlosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=tie] at @s as @a[team=wither,distance=..1000] run playsound minecraft:music_disc.tdmmillost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=tie] at @s as @a[team=wither,distance=..1000] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmlosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=tie] at @s as @a[distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaslosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=1},tag=ffaend] at @s run scoreboard players set @a[tag=!ffawinner,distance=..1000] winstreak 0
execute as @s[scores={timer2=1},tag=ffaend] at @s run scoreboard players add @a[tag=ffawinner,distance=..1000] winstreak 1
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[team=piglinffa,distance=..1000,tag=ffawinner] run playsound minecraft:music_disc.tdmabwin voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[team=witherffa,distance=..1000,tag=ffawinner] run playsound minecraft:music_disc.tdmmilwin voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[distance=..1000,tag=ffawinner] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmwintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[distance=..1000,tag=ffawinner] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaswintheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[team=piglinffa,distance=..1000,tag=!ffawinner] run playsound minecraft:music_disc.tdmablost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[team=witherffa,distance=..1000,tag=!ffawinner] run playsound minecraft:music_disc.tdmmillost voice @s ~ ~ ~ 0.7 1 0.7
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[distance=..1000,tag=!ffawinner] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmlosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=5},tag=ffaend] at @s as @a[distance=..1000,tag=!ffawinner] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmaslosttheme music @s ~ ~ ~ 1 1 1
execute as @s[scores={timer2=1},tag=piglinswin] at @s run experience add @a[distance=..1000,team=piglin] 30 points
execute as @s[scores={timer2=1},tag=piglinswin] at @s run scoreboard players add @a[distance=..1000,team=piglin] expcount 30
execute as @s[scores={timer2=1},tag=witherswin] at @s run experience add @a[distance=..1000,team=wither] 30 points
execute as @s[scores={timer2=1},tag=witherswin] at @s run scoreboard players add @a[distance=..1000,team=wither] expcount 30
execute as @s[scores={timer2=1},tag=tie] at @s run experience add @a[distance=..1000] 15 points
execute as @s[scores={timer2=1},tag=tie] at @s run scoreboard players add @a[distance=..1000] expcount 15
execute as @s[scores={timer2=1},tag=ffaend] at @s run experience add @a[distance=..1000,tag=ffawinner] 30 points
execute as @s[scores={timer2=1},tag=ffaend] at @s run scoreboard players add @a[distance=..1000,tag=ffawinner] expcount 30

execute at @s[scores={timer2=1},tag=piglinswin] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=piglin] run function main:challenges/challengebottlewinmatchxp
execute at @s[scores={timer2=1},tag=piglinswin] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=wither] run function main:challenges/challengebottlewinmatchxplost
execute at @s[scores={timer2=1},tag=witherswin] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=piglin] run function main:challenges/challengebottlewinmatchxplost
execute at @s[scores={timer2=1},tag=witherswin] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=wither] run function main:challenges/challengebottlewinmatchxp
execute at @s[scores={timer2=1},tag=tie] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=piglin] run function main:challenges/challengebottlewinmatchxplost
execute at @s[scores={timer2=1},tag=tie] as @a[tag=challengebottlewinmatchxp,distance=..1000,team=wither] run function main:challenges/challengebottlewinmatchxplost
execute at @s[scores={timer2=1},tag=ffaend] as @a[tag=challengebottlewinmatchxp,distance=..1000,tag=ffawinner] run function main:challenges/challengebottlewinmatchxp
execute at @s[scores={timer2=1},tag=ffaend] as @a[tag=challengebottlewinmatchxp,distance=..1000,tag=!ffawinner] run function main:challenges/challengebottlewinmatchxplost

execute as @s[scores={timer2=100..}] run tag @s remove piglinswin
execute as @s[scores={timer2=100..}] run tag @s remove witherswin
execute as @s[scores={timer2=100..}] run tag @s remove piglinsroundwin
execute as @s[scores={timer2=100..}] run tag @s remove withersroundwin
execute as @s[scores={timer2=100..}] run tag @s remove tie
execute as @s[scores={timer2=100..}] run tag @s remove ffaend
execute as @s[scores={timer2=100..}] run tag @s add endgame
execute as @s[scores={timer2=100..}] run tag @s remove ending
tag @s remove hqzone
tag @s remove requesthq
tag @s remove requesthqzone
tag @s remove gamemodetdm
tag @s remove gamemodehq
tag @s remove gamemodeffa
tag @s remove gamemodesnd
tag @s remove nextround
tag @s remove infectedrelease
tag @s remove gamemodeinf
tag @s remove gamemodecw
tag @s remove infectedwait
tag @s remove startzone
tag @s remove gamemodejug
tag @s remove gamemodeph
tag @s remove lockhunter
tag @s remove lastwitherannounced
tag @s remove lastpiglinannounced
tag @s remove lasttwowitherannounced
tag @s remove lasttwopiglinannounced
tag @s remove gamemodedem
tag @s remove gamemodegg