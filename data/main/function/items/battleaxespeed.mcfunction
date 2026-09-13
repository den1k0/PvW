attribute @s movement_speed modifier remove battleaxespeed1
attribute @s movement_speed modifier remove battleaxespeed2
attribute @s movement_speed modifier remove battleaxespeed3
execute if items entity @s[scores={health=0..30}] weapon.* iron_axe run particle minecraft:trial_omen ~ ~0.25 ~ 0.4 0.3 0.4 0 1 normal
execute if items entity @s[scores={health=21..30}] weapon.* iron_axe run attribute @s movement_speed modifier add battleaxespeed1 0.005 add_value
execute if items entity @s[scores={health=11..20}] weapon.* iron_axe run attribute @s movement_speed modifier add battleaxespeed2 0.01 add_value
execute if items entity @s[scores={health=0..10}] weapon.* iron_axe run attribute @s movement_speed modifier add battleaxespeed3 0.02 add_value