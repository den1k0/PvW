scoreboard players add @s[tag=frog] temp 1
execute as @s[tag=frog,scores={temp=400}] run kill @s
execute as @s[tag=frog,scores={temp=1}] run tag @s add applygravity
execute as @s[tag=frog,scores={temp=1}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 1.2 0
execute as @s[tag=frog,scores={temp=1}] at @s run particle minecraft:smoke ~ ~0.25 ~ 0.3 0.3 0.3 0 16 normal
execute as @s[tag=frogpiglin] at @s as @e[tag=arrowteamwither,limit=1,sort=nearest,distance=..4] run tag @s add frogtarget
execute as @s[tag=frogwither] at @s as @e[tag=arrowteampiglin,limit=1,sort=nearest,distance=..4] run tag @s add frogtarget
execute as @s[tag=frog] at @s if entity @e[tag=gamemodeffa,distance=..1000] as @e[tag=arrowteam,limit=1,sort=nearest,distance=..4] unless score @s playerid = @e[limit=1,sort=nearest,tag=frog] playerid run tag @s add frogtarget
execute as @s[tag=frogtarget] at @s run playsound minecraft:entity.frog.tongue master @a ~ ~ ~ 1 1 0
execute as @s[tag=frogtarget] at @s run particle poof ~ ~ ~ 0.3 0.3 0.3 0 8 normal
execute as @s[tag=frogtarget] at @s run scoreboard players add @e[sort=nearest,limit=1,tag=frog] temp2 1
execute as @s[tag=frogtarget,type=minecraft:trident] at @s if entity @e[tag=gamemodeinf,distance=..1000] run scoreboard players add @s[tag=frog] temp2 4
execute as @s[tag=frog] at @s run tp @s ~ ~ ~ facing entity @e[tag=frogtarget,limit=1,sort=nearest,distance=..4]
execute as @s[tag=frogtarget] at @s as @e[distance=..0.25,tag=snowball] run kill @s
execute as @s[tag=frogtarget] run kill @s
execute as @s[tag=frog,scores={temp2=4..}] run kill @s
execute as @s[tag=frog,scores={temp=1}] at @s as @p[tag=hasfieldupgrade,scores={frogspawnegg=1..,classslot9=3}] if entity @s[team=wither] run tag @e[sort=nearest,limit=1,tag=frog,scores={temp=1}] add frogwither
execute as @s[tag=frog,scores={temp=1}] at @s as @p[tag=hasfieldupgrade,scores={frogspawnegg=1..,classslot9=3}] if entity @s[team=piglin] run tag @e[sort=nearest,limit=1,tag=frog,scores={temp=1}] add frogpiglin
execute as @s[tag=frog,scores={temp=1}] at @s run scoreboard players operation @s playerid = @p[scores={frogspawnegg=1..}] playerid
execute as @s[tag=frog,scores={temp=1}] at @s as @p[scores={classslot9=3},nbt=!{Inventory:[{id:"minecraft:frog_spawn_egg"}]}] run tag @s remove hasfieldupgrade
execute at @s[tag=frogpiglin] run particle minecraft:dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.25 ~ 0.3 0.3 0.3 0 1 normal
execute at @s[tag=frogwither] run particle minecraft:dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.25 ~ 0.3 0.3 0.3 0 1 normal
