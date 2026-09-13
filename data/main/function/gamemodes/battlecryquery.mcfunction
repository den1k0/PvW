scoreboard players add @s voiceovertimer 1
execute as @s[scores={voiceovertimer=90..}] at @s as @a[team=piglin,sort=random,limit=1,distance=..1000] unless score @s voiceovertimer matches 1.. run function main:voiceover/battlecry
execute as @s[scores={voiceovertimer=90..}] at @s as @a[team=wither,sort=random,limit=1,distance=..1000] unless score @s voiceovertimer matches 1.. run function main:voiceover/battlecry
execute as @s[scores={voiceovertimer=90..}] run tag @s remove battlecryquery
execute as @s[scores={voiceovertimer=90..}] run scoreboard players reset @s voiceovertimer