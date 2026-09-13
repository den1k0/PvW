execute at @s[scores={timer2=-160}] run summon item_display ~ ~ ~ {Tags:["previewcamera"],teleport_duration:1}
execute as @s[scores={timer2=-160}] at @s run tp @n[tag=previewcamera] ~40 ~28 ~40 -45 0
execute as @s[scores={timer2=-80}] run tag @s add cameratp

execute at @s[tag=cameratp] at @e[tag=hardpoint,limit=1,sort=random,distance=..1000] run tp @n[tag=previewcamera] ~ ~1 ~ facing entity @e[tag=hardpoint,limit=1,sort=random,distance=9..1000] eyes
execute at @s[tag=cameratp] as @n[tag=previewcamera] at @s run tp @s ~ ~ ~ ~ 0
tag @s remove cameratp

execute at @s[scores={timer2=-159}] at @n[tag=previewcamera] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 32
execute at @s[scores={timer2=-105}] run playsound music_disc.pvwwoosh master @a[distance=..1000] ~ ~ ~ 1 1 1
execute at @s[scores={timer2=-110}] run title @a[distance=..1000] title [{"score":{"name":"@s","objective":"mapname"}}]
execute at @s[scores={timer2=-110}] run title @a[distance=..1000] subtitle [{"text": "Players: ","color": "yellow"},{"score":{"name":"@s","objective":"playercount"}}]
execute at @s[scores={timer2=-110}] run playsound ui.button.click master @a[distance=..1000] ~ ~ ~ 1 0.7 1

execute at @s run gamemode spectator @a[distance=..1000,team=piglin,tag=ingame]
execute at @s run gamemode spectator @a[distance=..1000,team=wither,tag=ingame]
execute at @s run gamemode spectator @a[distance=..1000,team=piglinffa,tag=ingame]
execute at @s run gamemode spectator @a[distance=..1000,team=witherffa,tag=ingame]
execute at @s as @a[distance=..1000,team=piglin,tag=ingame] run spectate @n[tag=previewcamera]
execute at @s as @a[distance=..1000,team=wither,tag=ingame] run spectate @n[tag=previewcamera]
execute at @s as @a[distance=..1000,team=piglinffa,tag=ingame] run spectate @n[tag=previewcamera]
execute at @s as @a[distance=..1000,team=witherffa,tag=ingame] run spectate @n[tag=previewcamera]

execute at @s as @n[tag=previewcamera] at @s run tp @s ^ ^ ^0.075

execute at @s[scores={timer2=-1}] at @n[tag=previewcamera] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 32
execute at @s[scores={timer2=0}] run title @a[distance=..1000] subtitle ""
execute at @s[scores={timer2=0}] run kill @n[tag=previewcamera]
execute at @s[scores={timer2=0}] run gamemode adventure @a[distance=..1000,tag=ingame]
execute at @s[scores={timer2=0}] run tag @s remove mappreview