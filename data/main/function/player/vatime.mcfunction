execute as @s[scores={vatime=25},tag=!legendarykillva,tag=player360,tag=playerairborne] at @s run playsound minecraft:music_disc.tfnice voice @s ~ ~ ~ 0.9 1 0.9
execute as @s[scores={vatime=25},tag=!legendarykillva,tag=player360,tag=playerhs] at @s run playsound minecraft:music_disc.tfnice voice @s ~ ~ ~ 0.9 1 0.9
execute as @s[scores={vatime=25},tag=!legendarykillva,tag=playerhs,tag=playerairborne] at @s run playsound minecraft:music_disc.tfnice voice @s ~ ~ ~ 0.9 1 0.9

execute as @s[tag=playerhs,scores={vatime=2},tag=!legendarykillva,tag=!player360] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did A",{"text":" Headshot!","color":"red"}]
execute as @s[tag=playerhs,scores={vatime=2},tag=!legendarykillva,tag=!player360] run scoreboard players add @s headshotcount 1
execute as @s[tag=playerhs,scores={vatime=2},tag=!legendarykillva,tag=!player360] run scoreboard players add @s expcount 2
execute as @s[tag=playerhs,scores={vatime=2},tag=!legendarykillva,tag=!player360] run experience add @s 2 points
execute as @s[tag=playerhs,scores={vatime=25},tag=!legendarykillva,tag=!player360,tag=!playerairborne] at @s run playsound minecraft:music_disc.tfheadshot voice @s ~ ~ ~ 0.7 1 0.7

execute as @s[tag=player360,scores={vatime=2},tag=!legendarykillva] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did A",{"text": " 360 TRICKSHOT!","color":"gold"}]
execute as @s[tag=player360,scores={vatime=2},tag=!legendarykillva] run scoreboard players add @s 360count 1
execute as @s[tag=player360,scores={vatime=2},tag=!legendarykillva] run scoreboard players add @s expcount 2
execute as @s[tag=player360,scores={vatime=2},tag=!legendarykillva] run experience add @s 2 points
execute as @s[tag=player360,scores={vatime=25},tag=!legendarykillva,tag=!playerhs,tag=!playerairborne] at @s run playsound minecraft:music_disc.tfthreesixty voice @s ~ ~ ~ 0.9 1 0.9

execute as @s[tag=playerairborne,scores={vatime=2},tag=!legendarykillva,tag=!player360] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did An",{"text": " Airborne Kill!","color":"aqua"}]
execute as @s[tag=playerairborne,scores={vatime=2},tag=!legendarykillva,tag=!player360] run scoreboard players add @s airkillcount 1
execute as @s[tag=playerairborne,scores={vatime=2},tag=!legendarykillva,tag=!player360] run scoreboard players add @s expcount 2
execute as @s[tag=playerairborne,scores={vatime=2},tag=!legendarykillva,tag=!player360] run experience add @s 2 points
execute as @s[tag=playerairborne,scores={vatime=25},tag=!legendarykillva,tag=!player360,tag=!playerhs] at @s run playsound minecraft:music_disc.tfkilljaroy voice @s ~ ~ ~ 1.5 1 0

execute as @s[tag=legendarykillva,scores={vatime=25}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Did A ",{"text":"LEGENDARY KILL!","color":"light_purple","bold":true}]
execute as @s[tag=legendarykillva,scores={vatime=25}] run scoreboard players add @s legendarykillcount 1
execute as @s[tag=legendarykillva,scores={vatime=25}] run scoreboard players add @s expcount 20
execute as @s[tag=legendarykillva,scores={vatime=25}] run experience add @s 20 points
execute as @s[tag=legendarykillva,scores={vatime=25}] at @s as @a[distance=..1000] at @s run playsound minecraft:music_disc.tflegendarykilltwo voice @s ~ ~ ~ 1.5 1 1

tag @s[scores={vatime=25}] remove player360
tag @s[scores={vatime=25}] remove playerhs
tag @s[scores={vatime=25}] remove playerairborne
tag @s[scores={vatime=25}] remove legendarykillva
scoreboard players reset @s[scores={vatime=25..}] vatime