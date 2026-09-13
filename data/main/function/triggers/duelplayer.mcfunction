tag @s[tag=ingame] add duelnotaccepted
execute at @s[tag=!duelnotaccepted] as @a[tag=!ingame] if score @s playerid = @p[scores={duelplayer=1..}] duelplayer run tag @p[scores={duelplayer=1..}] add duelaccepted
execute at @s[tag=!duelnotaccepted] as @a[tag=ingame] if score @s playerid = @p[scores={duelplayer=1..}] duelplayer run tag @p[scores={duelplayer=1..}] add duelnotaccepted
execute at @s[tag=!duelnotaccepted] as @a unless score @s playerid = @p[scores={duelplayer=1..}] duelplayer run tag @p[scores={duelplayer=1..}] add duelnotaccepted
tag @a[tag=duelnotaccepted] remove duelaccepted

tellraw @s[tag=duelnotaccepted] [{"text": "The Players Must Not Be In Any Game","color": "red"},{"text": " Or","color": "yellow"},{"text": " The Player Is Not Online","color": "gold"}]
tellraw @s[tag=duelaccepted] [{"text":"You Have Invited Player With ID ","color": "green"},{"score": {"name": "@s","objective": "duelplayer"},"color": "gold"},{"text": " To A Match.","color": "green"}, {"text": " Invitation Will Disappear In 10 Seconds."}]