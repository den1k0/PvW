scoreboard players add @s voiceovertimer 1
execute store result score @s random run random value 1..25

execute if score @s[team=piglin] random matches 1 at @s run playsound music_disc.pvwpiglinkillone voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 2 at @s run playsound music_disc.pvwpiglinkilltwo voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 3 at @s run playsound music_disc.pvwpiglinkillthree voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 4 at @s run playsound music_disc.pvwpiglinkillfour voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0
execute if score @s[team=piglin] random matches 5 at @s run playsound music_disc.pvwpiglinkillfive voice @a[distance=..1000,team=piglin] ~ ~ ~ 1.5 1 0

execute if score @s[team=wither] random matches 1 at @s run playsound music_disc.pvwwitherkillone voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 2 at @s run playsound music_disc.pvwwitherkilltwo voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 3 at @s run playsound music_disc.pvwwitherkillthree voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 4 at @s run playsound music_disc.pvwwitherkillfour voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0
execute if score @s[team=wither] random matches 5 at @s run playsound music_disc.pvwwitherkillfive voice @a[distance=..1000,team=wither] ~ ~ ~ 1.5 1 0