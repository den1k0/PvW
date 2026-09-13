scoreboard players add @s[tag=orbitalstrike] timer 1
execute at @s[tag=orbitalstrike,scores={timer=1..60}] run particle minecraft:dust{color:[1.000,1.000,0.700],scale:1.000} ~ ~0.25 ~ 2 0 2 0 6 normal
execute at @s[tag=orbitalstrike,scores={timer=1}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 0.7 0
execute at @s[tag=orbitalstrike,scores={timer=60}] run summon block_display ~ ~ ~ {Tags:["osbd1","osbd"],block_state:{Name:"smooth_quartz"}}
execute at @e[tag=orbitalstrike,scores={timer=60}] run summon block_display ~ ~ ~ {Tags:["osbd2","osbd"],block_state:{Name:"white_stained_glass"}}
execute at @s[tag=orbitalstrike,scores={timer=60}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.8 0
execute at @s[tag=orbitalstrike,scores={timer=60}] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.5 0
execute at @s[tag=orbitalstrike,scores={timer=60}] run particle poof ~ ~ ~ 0.3 0.01 0.3 0.5 160 normal
execute at @s[tag=orbitalstrike,scores={timer=60}] run particle flame ~ ~ ~ 0.3 0.01 0.3 0.35 80 normal
execute at @s[tag=orbitalstrike,scores={timer=60}] run particle explosion ~ ~ ~ 2 2 2 0 40 normal
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @e[distance=..3,type=!player] run damage @e[sort=nearest,limit=1] 30 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @e[distance=..5,type=!player] run damage @e[sort=nearest,limit=1] 24 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @e[distance=..7,type=!player] run damage @e[sort=nearest,limit=1] 18 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @e[distance=..9,type=!player] run damage @e[sort=nearest,limit=1] 12 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @e[distance=..11,type=!player] run damage @e[sort=nearest,limit=1] 6 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @a[distance=..3] run damage @p[gamemode=!spectator] 30 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @a[distance=..5] run damage @p[gamemode=!spectator] 24 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @a[distance=..7] run damage @p[gamemode=!spectator] 18 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @a[distance=..9] run damage @p[gamemode=!spectator] 12 minecraft:player_explosion by @s
execute as @s[tag=orbitalstrike,scores={timer=60}] at @s as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=60}] playerid at @a[distance=..11] run damage @p[gamemode=!spectator] 6 minecraft:player_explosion by @s

execute at @s[scores={timer=70..}] run particle minecraft:trial_omen ~ ~0.25 ~ 2 0 2 0 4 normal
execute at @s[scores={timer=70..}] as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=70..}] playerid at @e[distance=..5,type=!player] run damage @e[sort=nearest,limit=1] 4 minecraft:hot_floor by @s
execute at @s[scores={timer=70..}] as @a[distance=..1000] if score @s playerid = @e[sort=nearest,limit=1,tag=orbitalstrike,scores={timer=70..}] playerid at @a[distance=..5] run damage @p[gamemode=!spectator] 4 minecraft:hot_floor by @s
kill @s[scores={timer=270..}]