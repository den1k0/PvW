scoreboard players add @s autocam 1
scoreboard players reset @s random
execute if score @s autocam matches 60.. store result score @s random run random value 1..10
execute if score @s random matches 1 run tag @s add changecam
tag @s[tag=changecam] remove autocamspectatemap
execute at @s[tag=changecam] as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator] if score @s playerid = @p[gamemode=spectator] playerid run kill @s
execute as @s[tag=changecam] run spectate

execute as @s[tag=changecam] at @s if entity @a[tag=camenemynear,distance=..1000] run tag @s add autocamspectateplayer
execute at @s[tag=autocamspectateplayer] run spectate @a[tag=camenemynear,distance=..1000,sort=random,limit=1] @s[tag=autocamspectateplayer]

execute as @s[tag=changecam] at @s unless entity @a[tag=camenemynear,distance=..1000] run tag @s add autocamspectatemap
execute at @s[tag=autocamspectatemap,tag=changecam] run summon item_display ~ ~ ~ {Tags:["autocammover"]}
execute at @s[tag=autocamspectatemap,tag=changecam] as @e[tag=autocammover,distance=..10] unless score @s playerid matches 1.. run data modify entity @s teleport_duration set value 1
execute at @s[tag=autocamspectatemap,tag=changecam] unless score @n[tag=autocammover] playerid matches 1.. run scoreboard players operation @n[tag=autocammover] playerid = @s playerid
execute store result score @s[tag=autocamspectatemap,tag=changecam] random run random value 1..10
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 1 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @a[sort=random,limit=1,tag=ingame,distance=..1000,gamemode=!spectator] run tp @s ~ ~1.5 ~ facing entity @a[sort=random,limit=1,tag=ingame,distance=2..1000,gamemode=!spectator] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 2 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @a[sort=random,limit=1,tag=ingame,distance=..1000,gamemode=!spectator] run tp @s ~ ~1.5 ~ facing entity @e[sort=random,limit=1,tag=hardpoint,distance=2..1000] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 3 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @a[sort=random,limit=1,tag=ingame,distance=..1000,gamemode=!spectator] run tp @s ~ ~1.5 ~ facing entity @e[sort=random,limit=1,tag=bombplant,distance=2..1000] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 4 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @e[sort=random,limit=1,tag=bombplant,distance=..1000] run tp @s ~ ~1.5 ~ facing entity @a[sort=random,limit=1,tag=ingame,distance=2..1000,gamemode=!spectator] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 5 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @e[sort=random,limit=1,tag=hardpoint,distance=..1000] run tp @s ~ ~1.5 ~ facing entity @a[sort=random,limit=1,tag=ingame,distance=2..1000,gamemode=!spectator] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 6 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @e[sort=random,limit=1,tag=bombplant,distance=..1000] run tp @s ~ ~1.5 ~ facing entity @e[sort=random,limit=1,tag=bombplant,distance=2..1000] eyes
execute at @s if score @s[tag=autocamspectatemap,tag=changecam] random matches 7 as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator,tag=autocam] playerid at @e[sort=random,limit=1,tag=hardpoint,distance=..1000] run tp @s ~ ~1.5 ~ facing entity @e[sort=random,limit=1,tag=hardpoint,distance=2..1000] eyes
execute at @s[tag=autocamspectatemap,tag=changecam] as @e[tag=autocammover,distance=..1000] at @s at @a[distance=..1000,gamemode=spectator,tag=autocam] if score @s playerid = @p[gamemode=spectator] playerid run spectate @s @p[gamemode=spectator,tag=autocam]
tag @s[tag=changecam] remove autocamspectateplayer
scoreboard players reset @s[tag=changecam] autocam
tag @s remove changecam