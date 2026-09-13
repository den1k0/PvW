execute as @s run attribute @s minecraft:attack_damage modifier remove attackdamagehs
execute as @s[scores={sneak=0}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.62 ~ if entity @s[distance=..0.125] run function main:damage/hsdmg
execute as @s[scores={sneak=1..}] at @s anchored eyes positioned ^ ^ ^ facing entity @a[distance=1.65..5] eyes positioned ^ ^ ^1 rotated as @s rotated ~ ~3 positioned ^ ^ ^-1 positioned ~ ~-1.27 ~ if entity @s[distance=..0.125] run function main:damage/hsdmg
execute as @s[tag=hsdmg4] run attribute @s minecraft:attack_damage modifier add attackdamagehs 3 add_value

execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={piglinteamfaction=1},team=piglin,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] hunger 8 9 false
execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={piglinteamfaction=2},team=piglin,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] blindness 2 0 false
execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={piglinteamfaction=3},team=piglin,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] nausea 8 0 false

execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={witherteamfaction=1},team=wither,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] wither 4 1 false
execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={witherteamfaction=2},team=wither,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] slowness 4 0 false
execute as @s[scores={damagetaken=1..}] at @s on attacker if entity @s[scores={witherteamfaction=3},team=wither,tag=hseffect] run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] poison 2 1 false

scoreboard players add @s[tag=hseffect] hsdmg4timer 1
execute as @s[scores={hsdmg4timer=3..}] run function main:damage/hsdmg4timer
tag @s remove hsdmg4

execute as @s[scores={damagedealt=1..,witherteamfaction=1},team=wither] store result score @s witherrandomsaturation run random value 1..5
execute as @s[scores={damagedealt=1..,witherteamfaction=1},team=wither] if score @s witherrandomsaturation matches 1 run effect give @s saturation 1 0 false

execute as @s[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s damagedealt = @p[gamemode=!spectator] damagetaken
execute as @s[scores={damagetaken=1..}] at @s run scoreboard players operation @s damagetakenpertick /= 2 number
execute as @s[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s damagedealtperlife += @p[gamemode=!spectator] damagetakenpertick
execute as @s[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s totaldamagedealt += @p[gamemode=!spectator] damagetakenpertick
execute as @s[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @s totaldamagedealtround += @p[gamemode=!spectator] damagetakenpertick
execute as @s[scores={damageabsorbed=1..}] at @s on attacker run scoreboard players operation @s damagedealt += @p[gamemode=!spectator] damageabsorbed
execute as @s[scores={damagedealt=1..}] run scoreboard players operation @s damagedealt /= 2 number
execute as @s[scores={damagetaken=100..}] at @s run particle minecraft:angry_villager ~ ~0.5 ~ 0.2 0.35 0.2 0 8 normal
execute as @s[scores={damagetaken=10..}] at @s run particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~1 ~ 0.2 0.35 0.2 0 8 normal

#execute as @s[scores={damagedealt=1..}] run title @s actionbar ["",{"text":"-","color":"red"},{"score":{"name":"@s","objective":"damagedealt"},"color":"red"}]

execute as @s[scores={damagedealt=1..}] run function main:damage/damagedealt1

execute as @s[scores={damagedealt=50..}] run function main:damage/damagedealt50

execute as @s[scores={damagedealt=100..}] run function main:damage/damagedealt100

execute as @s[tag=playerhsme,scores={damagetaken=1..}] run function main:player/hsparticles
execute as @s[scores={damagedealt=1..}] run scoreboard players set @s actionbarwait 20

execute as @s[scores={damagetaken=1..}] run function main:damage/hurtsound

execute as @s[scores={damagetaken=1..},gamemode=!spectator] at @s on attacker if score @s[scores={classslot11=4}] damagedealt matches 1.. run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] minecraft:glowing 2 0 false
execute as @s[scores={damagetaken=1..},gamemode=!spectator] at @s on attacker if score @s[tag=got2perks] damagedealt matches 1.. run effect give @p[gamemode=!spectator,scores={damagetaken=1..}] minecraft:glowing 2 0 false

execute as @s[scores={damagetaken=1..,witherteamfaction=2},gamemode=!spectator,team=wither] on attacker run effect give @s glowing 2 0 true

execute as @s[scores={damagetaken=1..}] at @s on attacker run scoreboard players operation @p[scores={damagetaken=1..}] attackerid = @s playerid
execute as @s[scores={damagetaken=1..}] unless score @s attackertempid matches 1.. run scoreboard players operation @s attackertempid = @s attackerid
execute as @s[scores={damagetaken=1..}] unless score @s attackerid = @s attackertempid run scoreboard players set @s assisttemp 0
execute as @s[scores={damagetaken=1..}] unless score @s attackerid = @s attackertempid run scoreboard players operation @s assistid = @s attackertempid
execute as @s[scores={damagetaken=1..}] unless score @s attackerid = @s attackertempid run scoreboard players operation @s attackertempid = @s attackerid

execute as @s[scores={assistid=1..}] run scoreboard players add @s assisttemp 1
execute as @s[scores={assisttemp=100..}] run scoreboard players reset @s assistid
execute as @s[scores={assisttemp=100..}] run scoreboard players reset @s assisttemp

scoreboard players reset @s damageabsorbed
scoreboard players reset @s damagedealt
scoreboard players reset @s damagetaken
scoreboard players reset @s damagetakenpertick