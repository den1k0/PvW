execute if score @s expcount matches 10.. at @s run particle minecraft:wax_on ~ ~1 ~ 0.35 0.45 0.35 0 1 normal
execute if score @s expcount matches 50.. at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.4 0.3 0.035 1 normal

execute if score @s expcount matches 10.. run attribute @s minecraft:attack_damage modifier add piglinbonusdamage1 0.5 add_value
execute if score @s expcount matches 20.. run attribute @s minecraft:attack_damage modifier add piglinbonusdamage2 0.5 add_value
execute if score @s expcount matches 30.. run attribute @s minecraft:attack_damage modifier add piglinbonusdamage3 0.5 add_value
execute if score @s expcount matches 40.. run attribute @s minecraft:attack_damage modifier add piglinbonusdamage4 0.5 add_value
execute if score @s expcount matches 50.. run attribute @s minecraft:attack_damage modifier add piglinbonusdamage5 0.5 add_value