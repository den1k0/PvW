tag @s remove mpwaiting
execute at @s positioned ~ ~ ~-10000 run tag @a[distance=..1000,tag=randomizeloadoutjoin] add randomloadout
execute at @s positioned ~ ~ ~-10000 run scoreboard players operation @a[distance=..1000] matchid = @s matchid
execute at @s positioned ~ ~ ~-10000 run effect give @a[distance=..1000] slow_falling 1 0 true
scoreboard players set @s waiting 1200
execute as @s[tag=mp1as] run tag @s add loadgamemodeffa
execute as @s[tag=mp2as] run tag @s add loadgamemodehq
execute as @s[tag=mp3as] run tag @s add loadgamemodetdm
execute as @s[tag=mp4as] run tag @s add loadgamemodesnd
execute as @s[tag=mp5as] run tag @s add loadgamemodecw
execute as @s[tag=mp6as] run tag @s add loadgamemodeinf
execute as @s[tag=mp7as] run tag @s add loadgamemodejug
execute as @s[tag=mp8as] run tag @s add loadgamemodeph
execute as @s[tag=mp9as] run tag @s add loadgamemodedem
execute as @s[tag=mp10as] run tag @s add loadgamemodegg