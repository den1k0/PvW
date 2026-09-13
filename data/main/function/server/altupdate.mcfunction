execute as @e[tag=showhp] run function main:stats/customnamehealth with entity @s
execute as @e[tag=applygravity] run function main:entities/gravity
execute as @e[type=item_display,tag=graffiti] run function main:entities/graffitientity