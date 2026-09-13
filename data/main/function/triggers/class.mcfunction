execute as @s[scores={class=1}] run scoreboard players set @s loadoutid 1
execute as @s[scores={class=2}] run scoreboard players set @s loadoutid 2
execute as @s[scores={class=3}] run scoreboard players set @s loadoutid 3
execute as @s[scores={class=4,allowedclasses=4..}] run scoreboard players set @s loadoutid 4
execute as @s[scores={class=4}] unless score @s allowedclasses matches 4.. run tellraw @s [{"text": "Class ","color": "yellow"},{"score": {"name": "@s","objective": "class"},"color": "yellow"},{"text":" Is Not Unlocked Yet.","color":"red"}]
execute as @s[scores={class=4}] unless score @s allowedclasses matches 4.. run tag @s add dontchangeclass
execute as @s[scores={class=5,allowedclasses=5..}] run scoreboard players set @s loadoutid 5
execute as @s[scores={class=5}] unless score @s allowedclasses matches 5.. run tellraw @s [{"text": "Class ","color": "yellow"},{"score": {"name": "@s","objective": "class"},"color": "yellow"},{"text":" Is Not Unlocked Yet.","color":"red"}]
execute as @s[scores={class=5}] unless score @s allowedclasses matches 5.. run tag @s add dontchangeclass
execute as @s[scores={class=6..}] run scoreboard players set @s loadoutid 1
execute as @s[scores={class=1..},tag=!dontchangeclass] run tellraw @s [{"text":"Class Will Change After ","color":"yellow"},{"text":"Respawn","color":"dark_red"}]
execute as @s[scores={class=1..},tag=!dontchangeclass] run tag @s add showmyloadoutrequest