execute as @s[scores={defusing=1}] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 1 0
title @s[scores={defusing=1..19}] actionbar {"text":"DEFUSING","bold":true,"color":"gold"}
title @s[scores={defusing=20..39}] actionbar {"text":"DEFUSING.","bold":true,"color":"gold"}
title @s[scores={defusing=40..59}] actionbar {"text":"DEFUSING..","bold":true,"color":"gold"}
title @s[scores={defusing=60..79}] actionbar {"text":"DEFUSING...","bold":true,"color":"gold"}
title @s[scores={defusing=80..99}] actionbar {"text":"DEFUSING....","bold":true,"color":"gold"}
execute as @s[scores={defusing=1..}] at @s run scoreboard players set @s actionbarwait 20
execute as @s[scores={defusing=100..}] at @s run kill @e[tag=bomb,limit=1,sort=nearest,distance=..1000]
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] at @n[tag=bombplant,distance=..1000] run summon minecraft:block_display ~-0.95 ~ ~-0.95 {block_state:{Name:"minecraft:netherite_block"},Tags:["sndbd"],Glowing:1b}
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @n[tag=sndbd,distance=..1000] run data modify entity @s transformation.scale set value [1.9f,0.125f,1.9f]
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] run bossbar set mp9bomb visible false
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] run stopsound @a[distance=..1000] * minecraft:music_disc.ovobombtwo
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] run stopsound @a[distance=..1000] * minecraft:music_disc.ovobombone
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @a[distance=..1000] at @s run playsound music_disc.tdmabbombdef voice @s[team=piglin] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @a[distance=..1000] at @s run playsound music_disc.tdmabbombdef voice @s[team=wither] ~ ~ ~ 0.7 1 0.7
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodesnd,distance=..1000] run tag @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] add nextround
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodesnd,distance=..1000] run tag @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] add withersroundwin
execute as @s[scores={defusing=100..}] at @s if entity @e[tag=gamemodesnd,distance=..1000] run scoreboard players add @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] Withers 1
execute as @s[scores={defusing=100..}] at @s run playsound block.piston.contract master @a ~ ~ ~ 1 0.7 0
execute as @s[scores={defusing=100..}] run scoreboard players reset @s defusing
execute at @s run tag @a[distance=..1000] remove bombplanter