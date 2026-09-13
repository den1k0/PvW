execute store result score @s health run data get entity @s Health 5
execute store result score @s absorptionamount run data get entity @s AbsorptionAmount 5
scoreboard players operation @s health += @s absorptionamount
execute at @s if entity @a[distance=..1,gamemode=spectator] store result score @s food run data get entity @s foodLevel 5