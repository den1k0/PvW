tag @a remove camenemynear
execute as @a[team=wither,tag=ingame,gamemode=!spectator] at @s if entity @a[team=piglin,distance=..16,tag=ingame,gamemode=!spectator] run tag @s add camenemynear
execute as @a[team=piglin,tag=ingame,gamemode=!spectator] at @s if entity @a[team=wither,distance=..16,tag=ingame,gamemode=!spectator] run tag @s add camenemynear
execute as @a[team=witherffa,tag=ingame,gamemode=!spectator] at @s if entity @a[team=piglinffa,distance=..16,tag=ingame,gamemode=!spectator] run tag @s add camenemynear
execute as @a[team=piglinffa,tag=ingame,gamemode=!spectator] at @s if entity @a[team=witherffa,distance=..16,tag=ingame,gamemode=!spectator] run tag @s add camenemynear
execute as @a[team=wither,tag=ingame,gamemode=!spectator] at @s unless entity @a[team=piglin,distance=..16,tag=ingame,gamemode=!spectator] run tag @s remove camenemynear
execute as @a[team=piglin,tag=ingame,gamemode=!spectator] at @s unless entity @a[team=wither,distance=..16,tag=ingame,gamemode=!spectator] run tag @s remove camenemynear
execute as @a[team=witherffa,tag=ingame,gamemode=!spectator] at @s unless entity @a[team=piglinffa,distance=..16,tag=ingame,gamemode=!spectator] run tag @s remove camenemynear
execute as @a[team=piglinffa,tag=ingame,gamemode=!spectator] at @s unless entity @a[team=witherffa,distance=..16,tag=ingame,gamemode=!spectator] run tag @s remove camenemynear

execute as @a[tag=ingame,gamemode=!spectator] on attacker run tag @s add camenemynear

execute as @e[tag=autocammover] at @s run tp @s ^ ^ ^0.1