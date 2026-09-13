execute as @a[scores={ffauav=1}] at @s run playsound minecraft:music_disc.tdmmilenemyuav voice @a[team=witherffa,distance=0.1..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={ffauav=1}] at @s run playsound minecraft:music_disc.tdmabouruavonline voice @s[team=piglinffa] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={ffauav=1}] at @s run playsound minecraft:music_disc.tdmabenemyuav voice @a[team=piglinffa,distance=0.1..1000] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={ffauav=1}] at @s run playsound minecraft:music_disc.tdmmiluavonline voice @s[team=witherffa] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={ffauav=1}] at @s run tellraw @a[distance=..1000] [{"selector":"@s","bold":true},{"text":" used ","bold":true,"color":"yellow"},{"text":"UAV!","bold":true,"color":"yellow"}]
execute as @s[scores={ffauav=1..}] at @s run effect give @a[distance=0.1..1000,tag=ingame] glowing 1 0 true
scoreboard players add @s[scores={ffauav=1..}] ffauav 1
scoreboard players reset @s[scores={ffauav=400..}] ffauav