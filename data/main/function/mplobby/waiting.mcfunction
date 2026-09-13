scoreboard players remove @s waiting 1
execute at @s[scores={playercount=1..,waiting=1..}] positioned ~ ~ ~-10000 run title @a[distance=..1000] actionbar [{"text":"Intermission... ","color":"yellow"},{"score":{"name":"@s","objective":"playercount"}},{"text":"/"},{"score":{"name":"@s","objective":"maxplayercount"}},{"text":" | Next Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}},{"text":" | Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}}]
execute at @s[scores={playercount=..1,waiting=..0}] positioned ~ ~ ~-10000 run title @a[distance=..1000] actionbar [{"text":"Not Enough Players... ","color":"yellow"},{"score":{"name":"@s","objective":"playercount"}},{"text":"/"},{"score":{"name":"@s","objective":"maxplayercount"}},{"text":" | Next Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}},{"text":" | Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}}]

execute as @s[scores={waiting=1199,playercount=1..}] run tag @s add loadrandommap
execute at @s[scores={waiting=600}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"30 Seconds Until Match Starts","color":"red"}
execute at @s[scores={waiting=600}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"30 Seconds Until Match Starts","color":"red"}
execute at @s[scores={waiting=200}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"10 Seconds Until Match Starts","color":"red"}
execute at @s[scores={waiting=200}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"10 Seconds Until Match Starts","color":"red"}
execute at @s[scores={waiting=100}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"5","color":"red"}
execute at @s[scores={waiting=100}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"5","color":"red"}
execute at @s[scores={waiting=100}] positioned ~ ~ ~-10000 as @a[distance=..1000] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1 0
execute at @s[scores={waiting=80}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"4","color":"red"}
execute at @s[scores={waiting=80}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"4","color":"red"}
execute at @s[scores={waiting=80}] positioned ~ ~ ~-10000 as @a[distance=..1000] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1.2 0
execute at @s[scores={waiting=60}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"3","color":"red"}
execute at @s[scores={waiting=60}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"3","color":"red"}
execute at @s[scores={waiting=60}] positioned ~ ~ ~-10000 as @a[distance=..1000] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1 0
execute at @s[scores={waiting=40}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"2","color":"red"}
execute at @s[scores={waiting=40}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"2","color":"red"}
execute at @s[scores={waiting=40}] positioned ~ ~ ~-10000 as @a[distance=..1000] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1.2 0
execute at @s[scores={waiting=20}] positioned ~ ~ ~-10000 run tellraw @a[distance=..1000] {"text":"1","color":"red"}
execute at @s[scores={waiting=20}] positioned ~ ~ ~-10000 run title @a[distance=..1000] title {"text":"1","color":"red"}
execute at @s[scores={waiting=20}] positioned ~ ~ ~-10000 as @a[distance=..1000] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1 0

execute as @s[scores={waiting=4..10,playercount=1..}] run function main:mplobby/forceloadadd
execute as @s[scores={waiting=2,playercount=1..}] run tag @s add launchmap