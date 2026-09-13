execute as @s[tag=!spectatorstopchangeplayer,team=piglin] at @s run spectate @p[team=piglin,sort=random,gamemode=!spectator,distance=0.1..1000]
execute as @s[tag=!spectatorstopchangeplayer,team=wither] at @s run spectate @p[team=wither,sort=random,gamemode=!spectator,distance=0.1..1000]
execute as @s[tag=!spectatorstopchangeplayer,team=!piglin,team=!wither] at @s run spectate @p[sort=random,gamemode=!spectator,distance=0.1..1000]
title @s[tag=!spectatorstopchangeplayer] actionbar [{"text":"Press ","color":"yellow","bold":true},{"keybind":"key.jump","color":"aqua"},{"text":" To Change Player","color":"yellow","bold":true}]
tag @s add spectatorstopchangeplayer
scoreboard players reset @s spectatortemp