scoreboard players remove @s[scores={timer2=0..}] temp3 1
execute as @s[scores={temp3=599}] at @s run tellraw @a {"text":"Hunter Will Be Released In 30 Seconds!","color":"red"}
execute as @s[scores={temp3=99}] at @s run tellraw @a {"text":"Hunter Will Be Released In 10 Seconds!","color":"red"}
execute as @s[scores={temp3=1}] at @s run tellraw @a {"text":"Hunter Has Been Released!","color":"red"}
execute as @s[scores={temp3=1}] at @a[team=wither,distance=..1000] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 3 0.5 0
execute at @s run effect give @a[team=wither,distance=..1000] blindness 2 0 true
execute at @s run effect give @a[team=wither,distance=..1000] resistance 1 4 true
execute as @s[scores={temp3=694}] at @s run team join wither @a[sort=random,limit=1,distance=..1000]
execute as @s[scores={temp3=694}] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={temp3=694}] at @s run tag @a[distance=..1000] add phloadout
execute as @s[scores={temp3=699}] at @s run tag @a[distance=..1000] add loadout
execute as @s[scores={temp3=699}] at @s run tag @a[distance=..1000] add phloadout
execute at @s as @a[team=wither] at @n[tag=witherspawn] run tp @s ~ ~ ~
execute as @s[scores={temp3=..0}] run tag @s remove lockhunter