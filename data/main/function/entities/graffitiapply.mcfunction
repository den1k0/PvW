tag @s remove graffitimove
scoreboard players add @s graffiti 1
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #air run tag @s add graffitimove
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #snow run tag @s add graffitimove
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #sword_efficient run tag @s add graffitimove
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #all_signs run tag @s add graffitimove
execute if score @s graffiti matches 16.. run tag @s remove graffitimove

execute as @s[tag=graffitimove] at @s run tp @s ^ ^ ^0.25
execute as @s[tag=graffitimove] run function main:entities/graffitiapply

execute as @s[tag=!graffitimove] run tag @s remove graffitiinit
execute at @s[tag=!graffitimove] run particle poof ~ ~0.25 ~ 0.1 0.1 0.1 0.05 6 normal
execute as @s[tag=!graffitimove] run function main:entities/graffitialign