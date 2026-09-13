
execute as @s[tag=ffaend,tag=!ending] at @s as @a[distance=..1000] if score @s totalkills >= @n[tag=mpas] temp3 run tag @s add ffawinner
execute as @s[tag=ffaend,tag=!ending] run scoreboard players set @s timer2 0
execute as @s[tag=piglinswin,tag=!ending] run scoreboard players set @s timer2 0
execute as @s[tag=witherswin,tag=!ending] run scoreboard players set @s timer2 0
execute as @s[tag=tie,tag=!ending] run scoreboard players set @s timer2 0
execute as @s[tag=piglinswin] run tag @s add ending
execute as @s[tag=witherswin] run tag @s add ending
execute as @s[tag=tie] run tag @s add ending
execute as @s[tag=ffaend] run tag @s add ending