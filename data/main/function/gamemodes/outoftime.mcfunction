execute at @s as @a[team=piglin,distance=..1000,scores={piglinteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmatlaslastminute music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=wither,distance=..1000,scores={witherteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmoplastmin music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=piglin,distance=..1000] run playsound minecraft:music_disc.tdmabtime voice @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=wither,distance=..1000] run playsound minecraft:music_disc.tdmmiltime voice @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=piglin,distance=..1000,scores={piglinteamfaction=2..}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwoutoftime music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=wither,distance=..1000,scores={witherteamfaction=2..}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwoutoftime music @s ~ ~ ~ 0.7 1 0.7

execute at @s as @a[team=piglinffa,distance=..1000,scores={piglinteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmatlaslastminute music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=witherffa,distance=..1000,scores={witherteamfaction=1}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.tdmoplastmin music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=piglinffa,distance=..1000] run playsound minecraft:music_disc.tdmabtime voice @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=witherffa,distance=..1000] run playsound minecraft:music_disc.tdmmiltime voice @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=piglinffa,distance=..1000,scores={piglinteamfaction=2..}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwoutoftime music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=witherffa,distance=..1000,scores={witherteamfaction=2..}] unless score @s musicdisc matches 2 run playsound minecraft:music_disc.pvwoutoftime music @s ~ ~ ~ 0.7 1 0.7

execute at @s as @a[team=piglin,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasatlaslastminute music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=wither,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasoplastmin music @s ~ ~ ~ 0.7 1 0.7

execute at @s as @a[team=piglinffa,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasatlaslastminute music @s ~ ~ ~ 0.7 1 0.7
execute at @s as @a[team=witherffa,distance=..1000] if score @s musicdisc matches 2 run playsound minecraft:music_disc.xmasoplastmin music @s ~ ~ ~ 0.7 1 0.7

tag @s remove outoftime