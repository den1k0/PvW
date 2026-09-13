execute unless score @s exptemp1 matches 0.. run scoreboard players operation @s exptemp1 = @s exptemp2
execute store result score @s exptemp2 run experience query @s levels
execute if score @s exptemp1 < @s exptemp2 run tag @s add rankup
execute if score @s exptemp1 > @s exptemp2 run scoreboard players operation @s exptemp1 = @s exptemp2