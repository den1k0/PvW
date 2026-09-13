execute as @s[team=piglin,scores={piglinteamfaction=1..2}] run tag @s add addonefaction
execute as @s[team=piglin,scores={piglinteamfaction=3}] run tag @s add setonefaction
execute as @s[team=wither,scores={witherteamfaction=1..2}] run tag @s add addonefaction
execute as @s[team=wither,scores={witherteamfaction=3}] run tag @s add setonefaction

execute as @s[team=piglin,tag=addonefaction] run scoreboard players add @s piglinteamfaction 1
execute as @s[team=piglin,tag=setonefaction] run scoreboard players set @s piglinteamfaction 1
execute as @s[team=wither,tag=addonefaction] run scoreboard players add @s witherteamfaction 1
execute as @s[team=wither,tag=setonefaction] run scoreboard players set @s witherteamfaction 1

tag @s remove addonefaction
tag @s remove setonefaction

execute as @s[team=piglinffa,scores={piglinteamfaction=1..2}] run scoreboard players add @s piglinteamfaction 1
execute as @s[team=piglinffa,scores={piglinteamfaction=3}] run scoreboard players set @s piglinteamfaction 1
execute as @s[team=witherffa,scores={witherteamfaction=1..2}] run scoreboard players add @s witherteamfaction 1
execute as @s[team=witherffa,scores={witherteamfaction=3}] run scoreboard players set @s witherteamfaction 1

execute at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 1 0
execute at @s run particle minecraft:witch ~ ~1 ~ 0.6 0.6 0.6 1 50 normal
execute at @s run particle minecraft:poof ~ ~1 ~ 0.3 0.4 0.3 1 20 normal
tellraw @s [{"text": "Your Faction Has Been Changed!","color":"red"}]
execute as @s[team=piglin,scores={piglinteamfaction=1}] run title @s title {"text": "Piglins","color":"gold"}
execute at @s[team=piglin,scores={piglinteamfaction=1}] run playsound minecraft:music_disc.tdmatlasspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=piglin,scores={piglinteamfaction=2}] run title @s title {"text": "Wandering Traders","color":"gold"}
execute at @s[team=piglin,scores={piglinteamfaction=2}] run playsound minecraft:music_disc.pvwinnercirclespawn music @s ~ ~ ~ 0.56 1 0.56
execute as @s[team=piglin,scores={piglinteamfaction=3}] run title @s title {"text": "Witch","color":"dark_purple"}
execute at @s[team=piglin,scores={piglinteamfaction=3}] run playsound minecraft:music_disc.pvwdeltaspawn music @s ~ ~ ~ 0.48 1 0.48
execute as @s[team=wither,scores={witherteamfaction=1}] run title @s title {"text": "Withers","color":"aqua"}
execute at @s[team=wither,scores={witherteamfaction=1}] run playsound minecraft:music_disc.tdmopspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=wither,scores={witherteamfaction=2}] run title @s title {"text": "Strays","color":"aqua"}
execute at @s[team=wither,scores={witherteamfaction=2}] run playsound minecraft:music_disc.qgignspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=wither,scores={witherteamfaction=3}] run title @s title {"text": "Bogged","color":"aqua"}
execute at @s[team=wither,scores={witherteamfaction=3}] run playsound minecraft:music_disc.pvwspetsnazspawn music @s ~ ~ ~ 0.48 1 0.48
execute as @s[team=piglinffa,scores={piglinteamfaction=1}] run title @s title {"text": "Piglins","color":"gold"}
execute at @s[team=piglinffa,scores={piglinteamfaction=1}] run playsound minecraft:music_disc.tdmatlasspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=piglinffa,scores={piglinteamfaction=2}] run title @s title {"text": "Wandering Traders","color":"gold"}
execute at @s[team=piglinffa,scores={piglinteamfaction=2}] run playsound minecraft:music_disc.pvwinnercirclespawn music @s ~ ~ ~ 0.56 1 0.56
execute as @s[team=piglinffa,scores={piglinteamfaction=3}] run title @s title {"text": "Witch Piglins","color":"gold"}
execute at @s[team=piglinffa,scores={piglinteamfaction=3}] run playsound minecraft:music_disc.pvwdeltaspawn music @s ~ ~ ~ 0.48 1 0.48
execute as @s[team=witherffa,scores={witherteamfaction=1}] run title @s title {"text": "Withers","color":"aqua"}
execute at @s[team=witherffa,scores={witherteamfaction=1}] run playsound minecraft:music_disc.tdmopspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=witherffa,scores={witherteamfaction=2}] run title @s title {"text": "Strays","color":"aqua"}
execute at @s[team=witherffa,scores={witherteamfaction=2}] run playsound minecraft:music_disc.qgignspawn music @s ~ ~ ~ 0.8 1 0.8
execute as @s[team=witherffa,scores={witherteamfaction=3}] run title @s title {"text": "Bogged","color":"aqua"}
execute at @s[team=witherffa,scores={witherteamfaction=3}] run playsound minecraft:music_disc.pvwspetsnazspawn music @s ~ ~ ~ 0.48 1 0.48
scoreboard players reset @s factiondeathstreak