execute at @s positioned ^ ^ ^0.75 if block ~ ~ ~ #air run tag @s add abletomove
execute at @s positioned ^ ^ ^0.75 if block ~ ~ ~ #replaceable run tag @s add abletomove
execute at @s positioned ^ ^ ^0.75 if block ~ ~ ~ #sword_efficient run tag @s add abletomove
execute at @s positioned ^ ^ ^0.75 if block ~ ~ ~ #all_signs run tag @s add abletomove

execute at @s[tag=abletomove] run tp @s ^ ^ ^0.75

execute at @s[tag=binocularsmarkerpiglin] positioned ~ ~-1.65 ~ run effect give @a[team=wither,distance=..0.95] glowing 4 0 false
execute at @s[tag=binocularsmarkerwither] positioned ~ ~-1.65 ~ run effect give @a[team=piglin,distance=..0.95] glowing 4 0 false
execute at @s[tag=binocularsmarkerffa] positioned ~ ~-1.65 ~ run effect give @a[distance=..0.95] glowing 4 0 false

tag @s remove abletomove
scoreboard players add @s binocularstemp 1
execute if score @s binocularstemp matches 64.. run kill @s
execute if score @s binocularstemp matches ..65 run function main:entities/binocularsmarker