execute as @e[tag=clearmap] at @s run kill @e[tag=spawn,distance=..1000]
execute as @e[tag=clearmap] at @s run kill @e[tag=hardpoint,distance=..1000]
execute as @e[tag=clearmap] at @s run kill @e[tag=bombplant,distance=..1000]
execute as @e[tag=clearmap] at @s run kill @e[tag=piglinspawn,distance=..1000]
execute as @e[tag=clearmap] at @s run kill @e[tag=witherspawn,distance=..1000]
execute as @e[tag=clearmap] run tag @s remove clearmap