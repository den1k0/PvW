scoreboard players add @s timer 1
execute as @s[tag=!ported] at @s run scoreboard players operation @s playerid = @p[scores={piglinspawnegg=1..}] playerid
execute as @s[tag=!ported] run tag @s add applygravity
execute as @s[tag=!ported] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1.35 0
execute as @s[tag=!ported] at @s run particle poof ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20 normal
execute as @s[tag=!ported] run item replace entity @s armor.head with turtle_helmet
execute as @s[tag=!ported] run item replace entity @s weapon.mainhand with spyglass
execute as @s[scores={timer=1..}] run item replace entity @s armor.chest with air
execute as @s[scores={timer=1..}] run item replace entity @s armor.legs with air
execute as @s[scores={timer=1..}] run item replace entity @s armor.feet with air
execute as @s[tag=witherportableuav,tag=!ported] run attribute @s scale base set 0.5
execute as @s[tag=!ported] run tag @s add ported
execute as @s[tag=ffaportableuav] at @s as @a[distance=..12] unless score @s playerid = @e[limit=1,sort=nearest,tag=ffaportableuav] playerid run tag @s add portedffa
execute as @s[tag=ffaportableuav] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=portedffa,distance=..12]
effect give @a[tag=portedffa] glowing 1 0 false
execute at @a[tag=portedffa] run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.7 ~ 0.3 0.4 0.3 0 1 normal
tag @a[tag=portedffa] remove portedffa
execute as @s[tag=piglinportableuav] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,team=wither,distance=..12]
execute as @s[tag=witherportableuav] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,team=piglin,distance=..12]
execute as @s[tag=piglinportableuav] at @s run effect give @a[team=wither,distance=..12] glowing 1 0 false
execute as @s[tag=witherportableuav] at @s run effect give @a[team=piglin,distance=..12] glowing 1 0 false
execute as @s[tag=piglinportableuav] at @s at @a[team=wither,distance=..12] run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.7 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[tag=witherportableuav] at @s at @a[team=piglin,distance=..12] run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.7 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[tag=portableuav] at @s run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.5 ~ 0.9 0.9 0.9 0 1 normal
execute as @s[tag=piglinportableuav] at @s run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0 1 normal
execute as @s[tag=witherportableuav] at @s run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0 1 normal
kill @s[scores={timer=300..}]