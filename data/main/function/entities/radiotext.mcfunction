tag @s remove radiojustspawned
execute at @s at @a[distance=..1000] if score @s playerid = @p[gamemode=!spectator] playerid run tp @s ~ ~2.625 ~
scoreboard players add @s timer 1
kill @s[scores={timer=60..}]