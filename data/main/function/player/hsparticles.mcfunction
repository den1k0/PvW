execute at @s run particle minecraft:instant_effect ~ ~1.825 ~ 0.06 0.06 0.06 0.3 8 force @a[distance=..1000]
execute at @s run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 1 0.5 0
effect give @s blindness 1 0 true
tag @s remove hsparticles