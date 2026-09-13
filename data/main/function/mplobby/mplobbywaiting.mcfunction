execute at @s positioned ~ ~ ~-10000 if entity @a[distance=..1000,gamemode=!spectator] run function main:mplobby/waiting

execute at @s positioned ~ ~ ~-10000 run scoreboard players set @a[distance=..1000] actionbarwait 20
execute at @s positioned ~ ~ ~-10000 run spawnpoint @a[distance=..10] ~ ~ ~
execute at @s positioned ~ ~ ~-10000 as @a[tag=playjoinsound,distance=..1000] at @s run playsound music_disc.pvwjoin master @a[distance=..1000] ~ ~ ~ 0.2 1 0.2
execute at @s positioned ~ ~ ~-10000 as @a[tag=playjoinsound,distance=..1000] at @s run tellraw @a[distance=..1000] [{"selector": "@s"},{"text":" Joined","color": "green"},{"text":" The Lobby","color": "yellow"}]
execute at @s positioned ~ ~ ~-10000 as @a[tag=playjoinsound,distance=..1000] run tag @s remove playjoinsound

execute at @s positioned ~ ~ ~-10000 as @a[distance=..100,scores={prefferedteam=1}] at @s run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute at @s positioned ~ ~ ~-10000 as @a[distance=..100,scores={prefferedteam=2}] at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute at @s positioned ~ ~ ~-10000 as @a[distance=..100] unless score @s prefferedteam matches 1.. at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal

execute if score @s waiting matches ..0 if score @s playercount matches 1.. run function main:mplobby/startmatch