execute as @s[tag=!lockteams] run scoreboard players remove @s timer 1
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s seconds /= 20 number

execute as @s[tag=mp7as] store result bossbar minecraft:mp7timer value run scoreboard players get @s seconds
execute as @s[tag=mp7as] run bossbar set minecraft:mp7timer name [{"text":"Gamemode: ","color":"yellow"},{"score":{"name":"@s","objective":"gamemode"}},{"text":" | ","color":"white"},{"text":"Map: ","color":"yellow"},{"score":{"name":"@s","objective":"mapname"}}]

execute if score @s timer matches ..0 run tag @s add witherswin
execute at @s if score @s timer matches 1200 run tag @s add outoftime
execute at @s run effect give @a[team=wither,distance=..1000] glowing 1 0 true
execute at @s if entity @a[scores={death2=1..},distance=..1000,team=wither] run tag @s add piglinswin
execute at @s if score @s playercount matches 4..5 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 28.0
execute at @s if score @s playercount matches 6..7 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 36.0
execute at @s if score @s playercount matches 8..9 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 44.0
execute at @s if score @s playercount matches 10..11 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 52.0
execute at @s if score @s playercount matches 12..13 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 60.0
execute at @s if score @s playercount matches 14..15 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 68.0
execute at @s if score @s playercount matches 16..17 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 76.0
execute at @s if score @s playercount matches 18..19 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 84.0
execute at @s if score @s playercount matches 20..21 as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 92.0
execute at @s if score @s playercount matches 22.. as @a[tag=juggernaut,distance=..1000] run attribute @s minecraft:max_health base set 100.0
execute at @s if score @s playercount matches 3..6 as @a[tag=juggernaut,distance=..1000] run effect give @s minecraft:resistance 1 0 true
execute at @s if score @s playercount matches 7..10 as @a[tag=juggernaut,distance=..1000] run effect give @s minecraft:resistance 1 1 true
execute at @s if score @s playercount matches 11..14 as @a[tag=juggernaut,distance=..1000] run effect give @s minecraft:resistance 1 2 true
execute at @s if score @s playercount matches 15.. as @a[tag=juggernaut,distance=..1000] run effect give @s minecraft:resistance 1 3 true
