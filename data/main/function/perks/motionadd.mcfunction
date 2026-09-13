execute as @s run scoreboard players add @s temp2 1
execute as @s[scores={temp2=2}] store result score @s motionx run data get entity @s Motion[0] 1000
execute as @s[scores={temp2=2}] store result score @s motiony run data get entity @s Motion[1] 1000
execute as @s[scores={temp2=2}] store result score @s motionz run data get entity @s Motion[2] 1000
execute as @s[scores={temp2=2}] store result entity @s Motion[0] double 0.002 run scoreboard players get @s motionx
execute as @s[scores={temp2=2}] store result entity @s Motion[1] double 0.002 run scoreboard players get @s motiony
execute as @s[scores={temp2=2}] store result entity @s Motion[2] double 0.002 run scoreboard players get @s motionz
execute as @s[scores={temp2=2}] run tag @s remove motionadd