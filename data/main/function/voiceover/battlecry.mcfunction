scoreboard players add @s voiceovertimer 1
execute store result score @s random run random value 1..3

execute if score @s[team=piglin] random matches 1 at @s run playsound music_disc.pvwpiglinbattlecryone voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 2 at @s run playsound music_disc.pvwpiglinbattlecrytwo voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 3 at @s run playsound music_disc.pvwpiglinbattlecrythree voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0

execute if score @s[team=wither] random matches 1 at @s run playsound music_disc.pvwwitherbattlecryone voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 2 at @s run playsound music_disc.pvwwitherbattlecrytwo voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 3 at @s run playsound music_disc.pvwwitherbattlecrythree voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0