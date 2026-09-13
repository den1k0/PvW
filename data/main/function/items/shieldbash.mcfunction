clear @s[scores={shieldbash=20..}] minecraft:shield 1
scoreboard players add @s[scores={shieldbash=20..}] shieldtemp 1
execute at @s[scores={shieldbash=20..}] on attacker unless items entity @s weapon.* golden_axe unless items entity @s weapon.* stone_axe unless items entity @s weapon.* iron_axe run scoreboard players add @p[gamemode=!spectator] shieldtemp 30
execute at @s[scores={shieldbash=20..}] positioned ~ ~1 ~ run tag @n[type=arrow] add bouncearrow
execute at @s[scores={shieldbash=20..}] positioned ~ ~1 ~ run scoreboard players set @n[type=arrow] bounces 3
scoreboard players reset @s[scores={shieldbash=1..}] shieldbash