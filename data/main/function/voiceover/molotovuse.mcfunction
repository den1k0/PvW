scoreboard players add @s voiceovertimer 1
execute store result score @s random run random value 1..6

execute if score @s[team=piglin] random matches 1 at @s run playsound music_disc.pvwpiglinmolotovone voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 2 at @s run playsound music_disc.pvwpiglinmolotovtwo voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 3 at @s run playsound music_disc.pvwpiglinmolotovthree voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0

execute if score @s[team=wither] random matches 1 at @s run playsound music_disc.pvwwithermolotovone voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 2 at @s run playsound music_disc.pvwwithermolotovtwo voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 3 at @s run playsound music_disc.pvwwithermolotovthree voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0

execute at @s[team=piglin,scores={random=1..3}] run tellraw @a[distance=..24,team=piglin] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Molotov!","color": "red"}]
execute at @s[team=wither,scores={random=1..3}] run tellraw @a[distance=..24,team=wither] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Molotov!","color": "red"}]