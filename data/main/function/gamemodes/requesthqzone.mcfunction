execute as @s[tag=gamemodecw,tag=!nextround] run scoreboard players remove @s temp3 1
execute as @s[tag=gamemodehq] run scoreboard players remove @s temp3 1
execute as @s[tag=gamemodecw,scores={wtemp=1..}] run scoreboard players remove @s wtemp 1
execute as @s[scores={temp3=..0}] at @s run tag @e[tag=hardpointon,distance=..1000] add hardpointreal
execute as @s[scores={temp3=..0}] at @s if entity @e[tag=gamemodehq,distance=..1000] run title @a[distance=..1000] actionbar {"text":"HEADQUARTERS ONLINE!","bold":true,"color":"green"}
execute as @s[scores={temp3=..0}] at @s if entity @e[tag=gamemodecw,distance=..1000] run title @a[distance=..1000] actionbar {"text":"STRONGHOLD ONLINE!","bold":true,"color":"green"}
execute as @s[scores={temp3=..0}] at @s run scoreboard players set @a[distance=..1000] actionbarwait 60
execute as @s[scores={temp3=..0}] at @s run playsound minecraft:music_disc.qflagsound master @a[distance=..1000] ~ ~ ~ 0.35 0.95 0.35
execute as @s[scores={temp3=..0}] at @s if entity @e[tag=gamemodehq,distance=..1000] run playsound minecraft:music_disc.tdmabhqonline voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.8 1 0.8
execute as @s[scores={temp3=..0}] at @s if entity @e[tag=gamemodehq,distance=..1000] run playsound minecraft:music_disc.tdmmilhqonline voice @a[team=wither,distance=..1000] ~ ~ ~ 0.8 1 0.8
execute as @s[scores={temp3=..0}] at @s if entity @e[tag=gamemodecw,distance=..1000] run playsound minecraft:music_disc.tfstrongholdsonline voice @a[distance=..1000] ~ ~ ~ 2 1 1
execute as @s[scores={temp3=..0}] at @s run team join Neutral @e[tag=hqbd,distance=..1000]
execute as @s[scores={temp3=..0}] run scoreboard players set @s temp3 400
execute as @s[scores={temp3=400}] run tag @s add hqzone
execute as @s[scores={temp3=400}] run tag @s remove requesthqzone