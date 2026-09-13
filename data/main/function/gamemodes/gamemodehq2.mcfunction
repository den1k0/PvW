execute as @s[tag=gamemodehq] if score @s ptemp matches 10.. run scoreboard players add @s Piglins 1
execute as @s[tag=gamemodehq] if score @s ptemp matches 10.. run scoreboard players add @s count 1
execute as @s[tag=gamemodehq,scores={count=3}] at @s if score @s ptemp matches 10.. at @e[tag=hardpointreal,distance=..1000] run experience add @a[team=piglin,gamemode=!spectator,distance=..3.125] 1 points
execute as @s[tag=gamemodehq,scores={count=3}] at @s if score @s ptemp matches 10.. at @e[tag=hardpointreal,distance=..1000] run scoreboard players add @a[team=piglin,gamemode=!spectator,distance=..3.125] expcount 1
execute as @s[tag=gamemodehq] if score @s ptemp matches 10.. run scoreboard players reset @s ptemp
execute as @s[tag=gamemodehq] if score @s wtemp matches 10.. run scoreboard players add @s Withers 1
execute as @s[tag=gamemodehq] if score @s wtemp matches 10.. run scoreboard players add @s count 1
execute as @s[tag=gamemodehq,scores={count=3}] at @s if score @s wtemp matches 10.. at @e[tag=hardpointreal,distance=..1000] run experience add @a[team=wither,gamemode=!spectator,distance=..3.125] 1 points
execute as @s[tag=gamemodehq,scores={count=3}] at @s if score @s wtemp matches 10.. at @e[tag=hardpointreal,distance=..1000] run scoreboard players add @a[team=wither,gamemode=!spectator,distance=..3.125] expcount 1
execute as @s[tag=gamemodehq] if score @s wtemp matches 10.. run scoreboard players reset @s wtemp