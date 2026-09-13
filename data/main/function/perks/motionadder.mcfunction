execute as @s unless score @s tridentuse matches 1.. unless score @s snowballuse matches 1.. at @s positioned ~ ~1.65 ~ run tag @n[type=splash_potion] add motionadd
execute as @s unless score @s tridentuse matches 1.. unless score @s snowballuse matches 1.. at @s positioned ~ ~1.65 ~ run tag @n[type=lingering_potion] add motionadd
execute as @s if score @s tridentuse matches 1.. at @s positioned ~ ~1.65 ~ run tag @n[type=trident] add motionadd
execute as @s if score @s snowballuse matches 1.. at @s positioned ~ ~1.65 ~ run tag @n[type=snowball] add motionadd
tag @s remove motionadder
