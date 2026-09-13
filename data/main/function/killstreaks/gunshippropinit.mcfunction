execute at @s[team=piglin] run summon piglin ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,Tags:["gunshipprop","gunshippropinit","applygravity"]}
execute at @s[team=wither] run summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,Tags:["gunshipprop","gunshippropinit","applygravity"]}
execute at @s[team=piglinffa] run summon piglin ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,Tags:["gunshipprop","gunshippropinit","applygravity"]}
execute at @s[team=witherffa] run summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,Tags:["gunshipprop","gunshippropinit","applygravity"]}
execute at @s run summon marker ~ ~ ~ {Tags:["gunshipmain","gunshipmaininit","gunshippart"]}
execute at @s run particle poof ~ ~1 ~ 0.3 0.4 0.3 0.05 40 normal
effect give @s blindness 1 0 true
execute at @s[team=piglin] run playsound music_disc.warabourtank voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=piglin] run playsound music_disc.warmilenemytank voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=wither] run playsound music_disc.warmilourtank voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s[team=wither] run playsound music_disc.warabenemytank voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warabourtank voice @s[team=piglin] ~ ~ ~ 0.7 1 0
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warmilourtank voice @s[team=wither] ~ ~ ~ 0.7 1 0
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warabenemytank voice @a[team=piglin,distance=1..1000] ~ ~ ~ 0.7 1 0
execute at @s if entity @e[tag=gamemodeffa,distance=..1000] run playsound music_disc.warmilenemytank voice @a[team=wither,distance=1..1000] ~ ~ ~ 0.7 1 0

execute at @s as @e[tag=gunshipmaininit,distance=..0.01] unless score @s playerid matches 1.. store result score @s playerid run scoreboard players get @p[scores={whitewooluse=1..}] playerid
execute at @s as @e[tag=gunshippropinit,distance=..0.01] unless score @s playerid matches 1.. store result score @s playerid run scoreboard players get @p[scores={whitewooluse=1..}] playerid
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run item replace entity @s armor.chest from entity @p[scores={whitewooluse=1..}] armor.chest
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run item replace entity @s armor.legs from entity @p[scores={whitewooluse=1..}] armor.legs
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run item replace entity @s armor.feet from entity @p[scores={whitewooluse=1..}] armor.feet
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run item replace entity @s weapon.mainhand with map
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run item replace entity @s weapon.offhand from entity @p[scores={whitewooluse=1..}] weapon.offhand
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run attribute @s[type=wither_skeleton] scale base set 0.825
execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run tp @s ~ ~ ~ ~ ~

execute at @s as @e[distance=..1,tag=gunshippropinit] if score @s playerid = @p[scores={whitewooluse=1..}] playerid run tag @s remove gunshippropinit