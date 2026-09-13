execute as @s[scores={particle3=1}] at @s run particle minecraft:electric_spark ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[scores={particle3=2,jump=1..}] at @s run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~ ~ 0.4 0.2 0.4 0 20 normal
execute as @s[scores={particle3=2,jump=1..}] at @s run playsound entity.slime.jump_small master @a ~ ~ ~ 0.5 1 0
execute as @s[scores={particle3=3}] at @s run particle minecraft:scrape ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[scores={particle3=4}] at @s as @p[distance=0.1..0.7,gamemode=!spectator] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:invisibility":{}}}} run particle heart ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[scores={particle3=5,rotationm=40..}] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":3}} at @s run particle note ~ ~2.25 ~ 0.3 0.1 0.3 1 1
execute as @s[scores={particle3=5,rotationp=40..}] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":3}} at @s run particle note ~ ~2.25 ~ 0.3 0.1 0.3 1 1
execute as @s[scores={particle3=6,damagetaken2=1..}] if predicate {"condition":"minecraft:random_chance","chance":0.35} at @s run tag @s add magmaeffect

execute as @s[scores={particle3=8,fall=300..}] at @s run particle minecraft:block{block_state:"minecraft:anvil"} ~ ~ ~ 0.4 0.2 0.4 0 20 normal
execute as @s[scores={particle3=8,fall=300..}] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.7 0.7 0
execute as @s[scores={particle3=9,death=1..}] at @s run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0 6 normal
execute as @s[scores={particle3=9,death=1..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~1 ~ 1 0.7 0
execute as @s[scores={particle3=10,sneak=1..}] at @s run particle minecraft:rain ~ ~2.75 ~ 0.3 0.1 0.3 0 1 normal
execute as @s[scores={particle3=10,sneak=1..}] at @s run particle minecraft:cloud ~ ~2.75 ~ 0.35 0.175 0.35 0 2 normal
execute as @s[scores={particle3=11,damagedealt2=1..}] at @s at @n[distance=0.1..1000,scores={damagetaken2=1..},gamemode=!spectator] run particle minecraft:lava ~ ~0.7 ~ 0.3 0.3 0.3 0 6 normal
execute as @s[scores={particle3=12,notonground=12..}] at @s run particle minecraft:sweep_attack ~ ~ ~ 0.3 0.1 0.3 0 1 normal

execute as @s[scores={particle3=15}] at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[scores={particle3=16}] at @s run particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal
execute as @s[scores={particle3=17}] at @s run particle minecraft:witch ~ ~0.5 ~ 0.3 0.4 0.3 0 1 normal