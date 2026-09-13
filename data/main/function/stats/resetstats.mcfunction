scoreboard players set @s killstreak 0
scoreboard players set @s playerkillstreak 0
scoreboard players set @s temp 0
scoreboard players set @s temp2 0
scoreboard players set @s damagedealtperlife 0
scoreboard players set @a binocularsenergy 200
scoreboard players reset @s fieldupgrade
scoreboard players set @s totalkills 0
scoreboard players set @s totaldeaths 0
scoreboard players set @s deathstreak 0
scoreboard players reset @s death
scoreboard players reset @s goathorntimer
scoreboard players reset @s factiondeathstreak
scoreboard players set @s totaldamagedealt 0
scoreboard players reset @s highestkillstreak
scoreboard players reset @s attackerid
scoreboard players reset @s attackertempid
scoreboard players reset @s assistid
effect give @s instant_health 3 3
effect give @s saturation 5 5
gamemode adventure @s
tag @s remove got1perks
tag @s remove got2perks
tag @s remove got2perksready
tag @s remove uav
tag @s remove emp
tag @s remove airstrike
tag @s remove nuke
tag @s remove tank
tag @s remove hasfieldupgrade
tag @s remove ffawinner
tag @s remove juggernaut
tag @s remove phprop
tag @s remove playjoinsound
tag @s remove wolves
tag @s remove aura
tag @s remove trap
tag @s remove potionks
tag @s remove ims
tag @s remove supplydrop
tag @s remove uavendereye
tag @s remove gunship
tag @s remove switchteamtopiglin
tag @s remove switchteamtowither
tag @s remove ffafirstplace
tag @s remove infectedloadout
tag @s remove phloadout
tag @s remove ggloadout
stopsound @s[tag=ingame] music
scoreboard players set @s[tag=ingame] lobbymusictimer 120
attribute @s max_health base set 20.0
execute store result score @s piglinteamfaction run scoreboard players get @s prefferedpiglinteamfaction
execute store result score @s witherteamfaction run scoreboard players get @s prefferedwitherteamfaction
tag @s remove resetstats