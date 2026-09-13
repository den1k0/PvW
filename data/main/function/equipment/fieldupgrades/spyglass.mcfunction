scoreboard players add @s binocularstemp 1
scoreboard players remove @s binocularsenergy 1
scoreboard players set @s actionbarwait 8

execute at @s[team=piglin] anchored eyes positioned ^ ^ ^1.01 run summon marker ~ ~ ~ {Tags:["binocularsmarkerpiglin","binocularsmarker"]}
execute at @s[team=wither] anchored eyes positioned ^ ^ ^1.01 run summon marker ~ ~ ~ {Tags:["binocularsmarkerwither","binocularsmarker"]}
execute at @s[team=!piglin,team=!wither] anchored eyes positioned ^ ^ ^1.01 run summon marker ~ ~ ~ {Tags:["binocularsmarkerffa","binocularsmarker"]}

execute at @s anchored eyes positioned ^ ^ ^1.01 at @n[tag=binocularsmarker,distance=..0.1] rotated as @s run rotate @n[tag=binocularsmarker] ~ ~

execute as @s[scores={binocularsenergy=..0}] run tag @s remove hasfieldupgrade
execute as @s[scores={binocularsenergy=..0}] run clear @s spyglass
execute as @s[scores={binocularsenergy=..0}] at @s run playsound entity.item.break master @a ~ ~ ~ 1 1.2 0
execute as @s[scores={binocularsenergy=..0}] at @s run particle block{block_state:"minecraft:barrel"} ~ ~1.5 ~ 0.2 0.2 0.2 0 8 normal @a

title @s actionbar [{"text":"Energy: ","color": "green"},{"score":{"name":"@s","objective":"binocularsenergy"},"color":"yellow"}]