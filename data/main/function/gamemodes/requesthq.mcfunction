execute at @s as @e[tag=hardpoint,distance=..1000] run tag @s remove hardpointreal
execute at @s as @e[tag=hardpoint,distance=..1000] run tag @s remove hardpointon
execute at @s as @e[tag=hardpoint,distance=..1000,sort=random,limit=1,tag=!hardpointignore] run tag @s add hardpointon
execute at @s[tag=gamemodehq] at @e[tag=hardpointon,tag=!hardpointignore,distance=..1000] run summon minecraft:block_display ~-2.5 ~ ~-2.5 {Tags:["hqbd"],block_state:{Name:"minecraft:netherite_block"},Glowing:1b}
execute at @s[tag=gamemodecw] at @e[tag=hardpointon,tag=!hardpointignore,distance=..1000] run summon minecraft:block_display ~-2.5 ~ ~-2.5 {Tags:["hqbd"],block_state:{Name:"minecraft:gold_block"},Glowing:1b}
execute at @e[tag=hardpointon,tag=!hardpointignore] run data modify entity @e[limit=1,tag=hqbd,sort=nearest] transformation.scale set value [5.0f,0.13f,5.0f]
execute at @s if entity @e[tag=gamemodehq,distance=..1000] run playsound minecraft:music_disc.qflagsound master @a[distance=..1000] ~ ~ ~ 0.35 1 0.35
execute at @s if entity @e[tag=gamemodecw,distance=..1000] run playsound minecraft:music_disc.dvdcaptured master @a[distance=..1000] ~ ~ ~ 0.35 1 0.35
execute at @s if entity @e[tag=gamemodehq,distance=..1000] run title @a[distance=..1000] actionbar {"text":"HEADQUARTERS HAS BEEN FOUND!","bold":true,"color":"red"}
execute at @s if entity @e[tag=gamemodecw,distance=..1000] run title @a[distance=..1000] actionbar {"text":"STRONGHOLD HAS BEEN FOUND!","bold":true,"color":"red"}
execute at @s run scoreboard players set @a[distance=..1000] actionbarwait 60
execute at @s run tag @e[tag=hardpointignore,distance=..1000] remove hardpointignore
execute at @s at @e[tag=hqbd,distance=..1000] run tag @e[tag=hardpointon,distance=..5] add hardpointignore
execute at @s if entity @e[tag=gamemodehq,distance=..1000] run playsound minecraft:music_disc.tdmabhqlocated voice @a[team=piglin,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute at @s if entity @e[tag=gamemodehq,distance=..1000] run playsound minecraft:music_disc.tdmmilhqlocated voice @a[team=wither,distance=..1000] ~ ~ ~ 0.7 1 0.7
execute at @s run team join red @e[tag=hqbd,distance=..1000]
scoreboard players set @s temp3 400
execute as @s[tag=gamemodecw] run scoreboard players set @s wtemp 400
tag @s add requesthqzone
tag @s remove requesthq