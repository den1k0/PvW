scoreboard players operation @s exptemp1 = @s exptemp2
execute at @s run playsound minecraft:music_disc.pvwlevelup music @s[level=2..] ~ ~ ~ 0.25 1 0.25
title @s[level=2..] actionbar {"text":"LEVEL UP!","color":"green"}
scoreboard players set @s actionbarwait 60
tag @s remove rankup