execute as @s[scores={particle1=1..}] run function main:skins/particle1

execute as @s[scores={particle2=1..}] run function main:skins/particle2

execute as @s[scores={particle3=1..}] run function main:skins/particle3

execute as @s[tag=magmaeffect] run function main:skins/magmaeffect
scoreboard players reset @s jump
scoreboard players reset @s fall
scoreboard players set @s sneak 0
scoreboard players reset @s damagedealt2
scoreboard players reset @s damagetaken2

execute at @s[scores={musicdisc=2..}] run function main:skins/musicdisc