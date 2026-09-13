execute if score @s arrowdmg matches 30.. run scoreboard players add @s arrowdmg 16
execute if score @s arrowdmg matches ..29 run scoreboard players add @s arrowdmg 22
execute if score @s arrowdmg matches 47.. run scoreboard players set @s arrowdmg 46
execute store result entity @s damage double 0.1 run scoreboard players get @s arrowdmg
