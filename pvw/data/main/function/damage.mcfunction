execute as @a[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s damagedealt = @p[gamemode=!spectator] damagetaken
execute as @a[scores={damageabsorbed=1..}] at @s on attacker run scoreboard players operation @s damagedealt += @p[gamemode=!spectator] damageabsorbed
execute as @a[scores={damagedealt=1..}] run scoreboard players operation @s damagedealt /= 2 number
execute as @a[scores={damagetaken=100..}] at @s run particle minecraft:angry_villager ~ ~0.5 ~ 0.2 0.35 0.2 0 8 normal
execute as @a[scores={damagetaken=10..}] at @s run particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~1 ~ 0.2 0.35 0.2 0 8 normal

#execute as @a[scores={damagedealt=1..}] run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]

execute as @a[scores={damagedealt=1..}] unless score @s killstreak matches 3 unless score @s killstreak matches 5 unless score @s killstreak matches 7 unless score @s killstreak matches 15 run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]
execute as @a[scores={damagedealt=1..}] if score @s killstreak matches 3 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]
execute as @a[scores={damagedealt=1..}] if score @s killstreak matches 5 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]
execute as @a[scores={damagedealt=1..}] if score @s killstreak matches 7 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]
execute as @a[scores={damagedealt=1..}] if score @s killstreak matches 15 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]

execute as @a[scores={damagedealt=50..}] unless score @s killstreak matches 3 unless score @s killstreak matches 5 unless score @s killstreak matches 7 unless score @s killstreak matches 15 run title @s actionbar ["",{"text":"-","color":"dark_red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"dark_red"}]
execute as @a[scores={damagedealt=50..}] if score @s killstreak matches 3 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"dark_red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"dark_red"}]
execute as @a[scores={damagedealt=50..}] if score @s killstreak matches 5 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"dark_red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"dark_red"}]
execute as @a[scores={damagedealt=50..}] if score @s killstreak matches 7 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"dark_red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"dark_red"}]
execute as @a[scores={damagedealt=50..}] if score @s killstreak matches 15 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"dark_red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"dark_red"}]

execute as @a[scores={damagedealt=100..}] unless score @s killstreak matches 3 unless score @s killstreak matches 5 unless score @s killstreak matches 7 unless score @s killstreak matches 15 run title @s actionbar ["",{"text":"-","color":"gold"},{"score":{"name":"@s","objective":"damagedealt"},"color":"gold"}]
execute as @a[scores={damagedealt=100..}] if score @s killstreak matches 3 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"gold"},{"score":{"name":"@s","objective":"damagedealt"},"color":"gold"}]
execute as @a[scores={damagedealt=100..}] if score @s killstreak matches 5 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"gold"},{"score":{"name":"@s","objective":"damagedealt"},"color":"gold"}]
execute as @a[scores={damagedealt=100..}] if score @s killstreak matches 7 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"gold"},{"score":{"name":"@s","objective":"damagedealt"},"color":"gold"}]
execute as @a[scores={damagedealt=100..}] if score @s killstreak matches 15 unless score @s playerkill matches 1.. run title @s actionbar ["",{"text":"-","color":"gold"},{"score":{"name":"@s","objective":"damagedealt"},"color":"gold"}]

execute as @a[scores={damagetaken=1..}] run scoreboard players operation @s damagetaken /= 2 number
execute as @a[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s totaldamagedealt += @p[gamemode=!spectator] damagetaken
execute as @a[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s totaldamagedealtround += @p[gamemode=!spectator] damagetaken

execute as @a[team=wither,scores={damagetaken=1..}] at @s run playsound minecraft:entity.wither_skeleton.hurt master @a ~ ~ ~ 0.5 1 0
execute as @a[team=piglin,scores={damagetaken=1..}] at @s run playsound minecraft:entity.piglin.hurt master @a ~ ~ ~ 0.5 1 0
scoreboard players reset @a damageabsorbed
scoreboard players reset @a damagedealt
scoreboard players reset @a damagetaken

execute as @a run attribute @s minecraft:generic.attack_damage base set 1.0
execute as @a[scores={sneak=0}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.62 ~ if entity @s[distance=..0.125] run attribute @s minecraft:generic.attack_damage base set 4.0
execute as @a[scores={sneak=1..}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.27 ~ if entity @s[distance=..0.125] run attribute @s minecraft:generic.attack_damage base set 4.0
scoreboard players set @a sneak 0