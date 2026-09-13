tag @s add emped
execute at @s run scoreboard players operation @s playerid = @e[limit=1,sort=nearest,tag=potionid] playerid
execute at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1.5 0.85 0
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.2 1.2 0
execute at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1.5 0
execute at @s run particle minecraft:electric_spark ~ ~ ~ 1 1 1 1 60 normal
execute at @s run particle minecraft:poof ~ ~ ~ 1 1 1 0.2 30 normal
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.1 40 normal
execute at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~0.5 ~ 0.1 0.1 0.1 0 20 normal
execute at @s run effect give @a[distance=..5] blindness 1 0 true
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=arrowteamwither,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=frogwither,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=witherportableuav,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=insertionwither,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=creeperwither,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=c4wither,distance=..5]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=wither,distance=..5,gamemode=!spectator] run tag @p[gamemode=!spectator] remove hasfieldupgrade
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=wither,distance=..5,gamemode=!spectator] run clear @p[gamemode=!spectator] *[custom_data={fieldupgrade:1b}]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=wither,distance=..5,gamemode=!spectator] run clear @p[gamemode=!spectator] *[custom_data={fieldupgrade:1b,dontdrop:1b}]
execute at @s as @a[distance=..1000,team=piglin] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=wither,distance=..5,gamemode=!spectator] run scoreboard players reset @p[gamemode=!spectator] fieldupgrade
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=arrowteampiglin,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=frogpiglin,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=piglinportableuav,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=insertionpiglin,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=creeperpiglin,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @e[tag=c4piglin,distance=..5]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=piglin,distance=..5,gamemode=!spectator] run tag @p[gamemode=!spectator] remove hasfieldupgrade
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=piglin,distance=..5,gamemode=!spectator] run clear @p[gamemode=!spectator] *[custom_data={fieldupgrade:1b}]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=piglin,distance=..5,gamemode=!spectator] run clear @p[gamemode=!spectator] *[custom_data={fieldupgrade:1b,dontdrop:1b}]
execute at @s as @a[distance=..1000,team=wither] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid at @a[team=piglin,distance=..5,gamemode=!spectator] run scoreboard players reset @p[gamemode=!spectator] fieldupgrade
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=arrowteam,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=frog,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=portableuav,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=insertionpart,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=creeper,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=c4,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run kill @s
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[gamemode=!spectator,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run tag @s remove hasfieldupgrade
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[gamemode=!spectator,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run clear @s *[custom_data={fieldupgrade:1b}]
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[gamemode=!spectator,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run clear @s *[custom_data={fieldupgrade:1b,dontdrop:1b}]
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] as @a[gamemode=!spectator,distance=..5] if score @s playerid = @e[sort=nearest,limit=1,tag=emped] playerid run scoreboard players reset @s fieldupgrade
kill @s