execute at @s run tellraw @a [{"selector":"@a[scores={totalkills=1..},distance=..1000]"},{"text":" Got The","color":"white"},{"text":" First Kill","color":"red"}]
execute at @s run playsound minecraft:music_disc.xmasfirstblood voice @a[distance=..1000] ~ ~ ~ 0.5 1 0.5
tag @s add firstkill
tag @s remove announcefirstkill