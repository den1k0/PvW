scoreboard players add @s voiceovertimer 1
execute store result score @s random run random value 1..3

execute if score @s[team=piglin] random matches 1 at @s run playsound music_disc.pvwpiglincreeperone voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 2 at @s run playsound music_disc.pvwpiglincreepertwo voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 3 at @s run playsound music_disc.pvwpiglincreeperthree voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0

execute if score @s[team=wither] random matches 1 at @s run playsound music_disc.pvwwithercreeperone voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 2 at @s run playsound music_disc.pvwwithercreepertwo voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 3 at @s run playsound music_disc.pvwwithercreeperthree voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0

execute at @s[team=piglin,scores={random=1..3}] run tellraw @a[distance=..24,team=piglin] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Claymore!","color": "green"}]
execute at @s[team=wither,scores={random=1..3}] run tellraw @a[distance=..24,team=wither] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Claymore!","color": "green"}]