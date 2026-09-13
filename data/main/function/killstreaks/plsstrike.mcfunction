execute at @s[tag=plsstrike] run particle minecraft:dust{color:[1.000,1.000,1.000],scale:1} ~ ~-7 ~ 0.15 4 0.15 0 100 normal
execute at @s[tag=plsstrike] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~-10 ~ 2 1 0
execute at @s[tag=plsstrike] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~-10 ~ 1.5 0.7 0
execute at @s[tag=plsstrike] run particle minecraft:explosion ~ ~-9 ~ 2.5 0.5 2.5 0 20 normal
execute at @s[tag=plsstrike] positioned ~ ~-10 ~ as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=dummyhb] playerid at @e[distance=..5,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute at @s[tag=plsstrike] positioned ~ ~-10 ~ as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=dummyhb] playerid at @a[distance=..5] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @s[tag=plsstrike] run tag @s remove plsstrike