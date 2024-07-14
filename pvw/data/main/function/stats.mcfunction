execute as @a[gamemode=!spectator] store result score @s health run data get entity @s Health 5
execute as @a[gamemode=!spectator] store result score @s absorptionamount run data get entity @s AbsorptionAmount 5
execute as @a[gamemode=!spectator] run scoreboard players operation @s health += @s absorptionamount
execute as @a[gamemode=!spectator] store result score @s food run data get entity @s foodLevel 5