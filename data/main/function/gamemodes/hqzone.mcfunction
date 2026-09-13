execute as @s[tag=gamemodecw,tag=!startzone,scores={temp3=0}] at @s if score @s wtemp matches 400.. run experience add @a[distance=..1000,team=wither] 10 points
execute as @s[tag=gamemodecw,tag=!startzone,scores={temp3=0}] at @s if score @s wtemp matches 400.. run scoreboard players add @a[distance=..1000,team=wither] expcount 10
execute as @s[tag=gamemodecw,tag=!startzone,scores={temp3=0}] if score @s wtemp matches 400.. run scoreboard players add @s Withers 1
execute as @s[scores={temp3=0}] at @s at @e[tag=hqbd,distance=..1000] run playsound minecraft:music_disc.iiradartwo neutral @a ~ ~ ~ 1.5 1 0
execute as @s[scores={temp3=0}] at @s run kill @e[tag=hqbd,distance=..1000]
execute as @s[scores={temp3=0}] run tag @s add requesthq
execute as @s[tag=!startzone,scores={temp3=0}] at @s if entity @e[tag=gamemodecw,distance=..1000] run playsound minecraft:music_disc.tfbastionlost voice @a[team=piglin,distance=..1000] ~ ~ ~ 2 1 1
execute as @s[scores={temp3=0}] run tag @s remove startzone
execute as @s[scores={temp3=0}] run tag @s remove hqzone