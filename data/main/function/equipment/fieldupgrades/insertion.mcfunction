execute as @s[tag=insertionpart] run tag @s add applygravity
execute as @s[tag=insertioninit] run data modify entity @s transformation.translation set value [0.0f,0.25f,0.0f]
execute as @s[tag=insertioninit] at @s run scoreboard players operation @s playerid = @p[scores={echosharduse=1..}] playerid
execute as @a[scores={echosharduse=1..}] at @s run kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:echo_shard"}}]
execute as @s[tag=insertioninit] at @s run playsound minecraft:music_disc.iiradarfour neutral @a ~ ~ ~ 1 1 0
execute as @s[tag=insertionpiglin] at @s run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~0.375 ~0.65 ~ 0.05 0.2 0.05 0 1 normal
execute as @s[tag=insertionwither] at @s run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~0.375 ~0.65 ~ 0.05 0.2 0.05 0 1 normal
execute as @s[tag=insertioninit] at @s as @p[gamemode=!spectator,scores={echosharduse=1..}] if entity @s[team=piglin] run tag @e[sort=nearest,limit=1,tag=insertioninit] add insertionpiglin
execute as @s[tag=insertioninit] at @s as @p[gamemode=!spectator,scores={echosharduse=1..}] if entity @s[team=wither] run tag @e[sort=nearest,limit=1,tag=insertioninit] add insertionwither
execute as @a[scores={echosharduse=1..}] run tag @s remove hasfieldupgrade
execute as @s[tag=insertioninit] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["insertionit","insertionpart"],width:0.575f,height:0.75f}
tag @s[tag=insertioninit] remove insertioninit
execute as @s[tag=insertionit] if data entity @s attack run tag @s add insertionitattacked
execute as @s[tag=insertionitattacked] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1 0
execute as @s[tag=insertionitattacked] at @s run particle minecraft:smoke ~ ~0.25 ~ 0.3 0.3 0.3 0 16 normal
execute as @s[tag=insertionitattacked] at @s run kill @e[tag=insertionpart,distance=..0.1]