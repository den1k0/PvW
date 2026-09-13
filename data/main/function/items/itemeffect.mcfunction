execute as @s[scores={damagetaken=6..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand *[custom_data={poison:1b}] run effect give @p[gamemode=!spectator,scores={damagetaken=6..}] minecraft:poison 2 1 false
execute as @s[scores={damagetaken=1..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand *[custom_data={iceaspect:1b}] run tag @p[gamemode=!spectator,scores={damagetaken=1..}] add playericed
execute as @s[scores={damagetaken=6..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand *[custom_data={iceaspect:1b,poison:1b}] run tag @p[gamemode=!spectator,scores={damagetaken=1..}] add playericedpoisoned
execute as @s[scores={damagetaken=6..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand golden_sword[custom_data={poison:1b}] run effect give @p[gamemode=!spectator,scores={damagetaken=6..}] minecraft:poison 3 1 false
execute as @s[scores={damagetaken=1..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand golden_sword[custom_data={iceaspect:1b}] run tag @p[gamemode=!spectator,scores={damagetaken=1..}] add playericed2
execute as @s[scores={damagetaken=6..},gamemode=!spectator] at @s on attacker if score @s damagedealt matches 1.. if items entity @s weapon.mainhand golden_sword[custom_data={iceaspect:1b,poison:1b}] run tag @p[gamemode=!spectator,scores={damagetaken=1..}] add playericedpoisoned2
effect give @s[gamemode=!spectator,tag=playericed] minecraft:slowness 3 0 false
effect give @s[gamemode=!spectator,tag=playericed] minecraft:mining_fatigue 3 1 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned] minecraft:poison 2 1 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned] minecraft:slowness 3 0 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned] minecraft:mining_fatigue 3 1 false
effect give @s[gamemode=!spectator,tag=playericed2] minecraft:slowness 3 1 false
effect give @s[gamemode=!spectator,tag=playericed2] minecraft:mining_fatigue 3 2 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned2] minecraft:poison 3 1 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned2] minecraft:slowness 3 1 false
effect give @s[gamemode=!spectator,tag=playericedpoisoned2] minecraft:mining_fatigue 3 2 false
tag @s remove playericed
tag @s remove playericed2
tag @s remove playericedpoisoned
tag @s remove playericedpoisoned2