execute store result score @s random run random value 1..5
execute if score @s random matches 1 at @s run playsound entity.item.pickup master @a ~ ~ ~ 0.35 0.55 0
execute if score @s random matches 2 at @s run playsound entity.item.pickup master @a ~ ~ ~ 0.35 0.575 0
execute if score @s random matches 3 at @s run playsound entity.item.pickup master @a ~ ~ ~ 0.35 0.6 0
execute if score @s random matches 4 at @s run playsound entity.item.pickup master @a ~ ~ ~ 0.35 0.625 0
execute if score @s random matches 5 at @s run playsound entity.item.pickup master @a ~ ~ ~ 0.35 0.65 0

tag @s add itemdropped