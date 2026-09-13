data modify entity @s[tag=uaveyeinit] teleport_duration set value 1
scoreboard players add @s temp 1
tag @s remove uaveyeinit
execute at @s unless entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator,team=piglin] if score @p[gamemode=!spectator,team=piglin] playerid = @s playerid run tp @s ~ ~3 ~
execute at @s unless entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator,team=wither] if score @p[gamemode=!spectator,team=wither] playerid = @s playerid run tp @s ~ ~3 ~
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator] if score @p[gamemode=!spectator] playerid = @s playerid run tp @s ~ ~3 ~

execute at @s unless entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator,team=piglin] if score @p[gamemode=!spectator,team=piglin] playerid = @s playerid run tp @s ~ ~3 ~ facing entity @p[team=wither,distance=..1000] eyes
execute at @s unless entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator,team=wither] if score @p[gamemode=!spectator,team=wither] playerid = @s playerid run tp @s ~ ~3 ~ facing entity @p[team=piglin,distance=..1000] eyes
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] at @a[distance=..1000,gamemode=!spectator] if score @p[gamemode=!spectator] playerid = @s playerid run tp @s ~ ~3 ~ facing entity @p[distance=3..1000] eyes
execute at @s[scores={temp=2..}] as @a[distance=..1000,gamemode=!spectator] if score @s playerid = @n[tag=uaveye] playerid unless entity @s[tag=uavendereye] run kill @n[tag=uaveye]

execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0.3 0.3 0.3 0 1 normal