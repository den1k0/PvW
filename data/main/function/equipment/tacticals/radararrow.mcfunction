tag @s add radared
scoreboard players add @s temp 1
execute as @s[scores={temp=1}] run data modify entity @s pickup set value 0b
execute as @s[scores={temp=1}] at @s run playsound minecraft:music_disc.iiradarone master @a ~ ~ ~ 1.5 1 0
execute at @s run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.9 0.9 0.9 0 6 normal
execute at @s[tag=arrowteamwither] run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 2 normal
execute at @s[tag=arrowteampiglin] run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 2 normal
execute if score @s temp matches 300.. run kill @s
execute at @s[tag=arrowteampiglin] run effect give @a[distance=..6.5,team=wither,gamemode=!spectator] minecraft:glowing 1 0 true
execute at @s[tag=arrowteamwither] run effect give @a[distance=..6.5,team=piglin,gamemode=!spectator] minecraft:glowing 1 0 true
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[distance=..6.5,gamemode=!spectator] unless score @s playerid = @e[tag=radared,sort=nearest,limit=1] playerid run effect give @s minecraft:glowing 1 0 true
