scoreboard players remove @s[tag=!ingame] lobbymusictimer 1
execute as @s[tag=!ingame,tag=musicvolumeoff] run scoreboard players set @s lobbymusictimer 5
execute as @s[scores={lobbymusictimer=..0}] run tag @s add changelobbymusic
execute as @s[tag=changelobbymusic,scores={musicdisc=1..2}] run function main:lobbymusic/changelobbymusicdefault
execute as @s[tag=changelobbymusic,scores={musicdisc=3}] run function main:lobbymusic/changelobbymusicpvw
execute as @s[tag=changelobbymusic,scores={musicdisc=4}] run function main:lobbymusic/changelobbymusicevent

execute as @s[tag=!musicvolumeoff] run function main:lobbymusic/musicvolumeoff

execute as @s[scores={leavegame=1..}] run scoreboard players set @s lobbymusictimer 120
scoreboard players reset @s leavegame