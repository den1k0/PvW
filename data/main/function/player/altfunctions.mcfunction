gamemode adventure @s[gamemode=survival]
execute as @s[tag=showmyloadout] run function main:loadout/myloadout
execute as @s[tag=testclass] run function main:loadout/testclass
execute as @s[tag=pvwdefaultinventory] run function main:inventory/pvwdefaultinventory
execute as @s[gamemode=spectator,tag=ingame] run function main:player/spectatorbuttons
scoreboard players reset @s[gamemode=!spectator] spectatortemp
execute if entity @s[tag=autocam,gamemode=spectator] run function main:autocam/maincamloop
execute as @s[tag=autocam,gamemode=spectator] run function main:autocam/autocam
execute as @s[tag=!musicvolume100,tag=!musicvolume50,tag=!musicvolumeoff] run tag @s add musicvolume50
execute as @s[tag=resetstats] run function main:stats/resetstats
execute as @s[gamemode=spectator] run function main:actionbar/spectator
effect give @s[tag=!ingame] saturation 1 0 true
execute as @s[tag=matchreward] run function main:skins/matchreward
execute as @s[tag=!ggloadout] run function main:killstreaks/killstreaks
execute as @s[tag=ingame] run function main:player/bonus
execute if items entity @s[gamemode=adventure,tag=!ingame,team=Neutral] weapon.mainhand written_book[custom_data={dontclear:1b}] run function main:player/feedback

function main:stats/stats
function main:achievements/achievements
function main:lobbymusic/stopmusic
function main:killstreaks/killstreakannouncer

execute store result score @s[tag=ingame] saturationlevel run data get entity @s foodSaturationLevel 1