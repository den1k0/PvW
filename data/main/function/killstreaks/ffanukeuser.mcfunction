execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 1 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 10","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 21 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 9","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 41 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 8","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 61 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 7","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 81 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 6","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 101 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 5","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 121 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 4","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 141 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 3","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 161 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 2","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 181 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 1","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 201 run title @a[distance=..1000] actionbar [{"selector": "@s"},{"text":" NUKE - 0","bold":true,"color":"red"}]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 221 run effect give @a[distance=..1000] minecraft:darkness 3 0 true
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 221 run effect give @a[distance=..1000] minecraft:night_vision 3 0 true
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 281 at @a[distance=..1000] run particle minecraft:firework ~ ~1 ~ 3 3 3 1 400 normal
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 286 as @a[distance=0.1..1000] run damage @s 100 player_attack by @p[gamemode=!spectator]
execute as @s[tag=ffanukeuser] at @s if score @s ffanuke matches 286 run scoreboard players set @s ffanuke 0