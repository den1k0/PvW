execute at @s[team=piglin,scores={turtleegguse=1..}] run playsound music_disc.warabourtank voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=piglin,scores={turtleegguse=1..}] run playsound music_disc.warmilenemytank voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=wither,scores={turtleegguse=1..}] run playsound music_disc.warmilourtank voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=wither,scores={turtleegguse=1..}] run playsound music_disc.warabenemytank voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[scores={turtleegguse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warabourtank voice @s[team=piglin] ~ ~ ~ 0.7 1 0
execute at @s[scores={turtleegguse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warmilourtank voice @s[team=wither] ~ ~ ~ 0.7 1 0
execute at @s[scores={turtleegguse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warabenemytank voice @a[team=piglin,distance=1..1000] ~ ~ ~ 0.7 1 0
execute at @s[scores={turtleegguse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warmilenemytank voice @a[team=wither,distance=1..1000] ~ ~ ~ 0.7 1 0