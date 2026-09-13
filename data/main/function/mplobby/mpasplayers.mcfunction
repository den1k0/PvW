execute at @s positioned ~ ~ ~-5000 store result score @s playercount if entity @a[distance=..6000]
execute unless score @s playercounttemp = @s playercount run function main:mplobby/updateplayercount
scoreboard players operation @s playercounttemp = @s playercount