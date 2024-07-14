tag @a[scores={death=1..}] add loadout
execute as @a[scores={death=1..,playerkillstreak=10..}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"},{"text":" Killstreak Ended on "},{"score":{"name":"@s","objective":"playerkillstreak"},"color":"dark_red"},{"text":"🗡","color":"dark_red"}]
execute as @a[scores={death=1}] at @s if entity @a[scores={playerkill2=1..}] run tellraw @a[distance=..1000] [{"selector":"@s"},{"text":" Was Killed By ","color":"white"},{"selector":"@p[scores={playerkill2=1..}]"}]
execute as @a[scores={death=1}] at @s if entity @a[scores={playerkill2=1..}] run tellraw @s ["","Enemy Had ",{"score":{"name":"@p[scores={playerkill2=1..}]","objective":"health"},"color":"red"},{"text":" Health","color":"red"}]
tag @a[scores={death=1..}] remove got1perks
tag @a[scores={death=1..}] remove got2perks
tag @a[scores={death=1..}] remove got2perksready
execute as @a[scores={death=1..}] at @s run tag @a[distance=..1000] remove lastkilled
tag @a[scores={death=1..}] add lastkilled
scoreboard players set @a[scores={death=1..,classslot12=1}] killstreak 0
scoreboard players set @a[scores={death=1..,classslot12=3}] killstreak 0
execute as @a[scores={death=1..},tag=playerhsme] run tag @a[scores={playerkill2=1..}] add playerhs
scoreboard players reset @a playerkill2
scoreboard players set @a[scores={death=1..}] playerkillstreak 0
scoreboard players reset @a[scores={death=1..}] death