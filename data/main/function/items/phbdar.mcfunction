execute as @s[tag=phbdar,tag=inground] at @s positioned ~-0.5 ~ ~-0.5 run data modify entity @n[tag=phbd] block_state set from entity @s inBlockState
kill @s[tag=inground]
scoreboard players add @s timer 1
kill @s[scores={timer=7..}]