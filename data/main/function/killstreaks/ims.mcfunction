execute as @s[tag=imsinit] run data modify entity @s teleport_duration set value 2
execute as @s[tag=imsinit] run tag @s add applygravity
execute as @s[tag=imsinit] run scoreboard players set @s count 3
execute as @s[tag=imsinit,tag=imsit] run scoreboard players set @s health 3
execute as @s[tag=imsinit,tag=!imsit] run data modify entity @s transformation.translation set value [-0.375f,0f,-0.375f]
execute as @s[tag=imsinit,tag=!imsit] run data modify entity @s transformation.scale set value [0.75f,0.75f,0.75f]
execute at @s[tag=imsinit] as @a[distance=..1000,team=piglin] if score @s playerid = @n[tag=imsinit] playerid run tag @n[tag=imsinit] add piglinims
execute at @s[tag=imsinit] as @a[distance=..1000,team=wither] if score @s playerid = @n[tag=imsinit] playerid run tag @n[tag=imsinit] add witherims
tag @s remove imsinit

execute at @s[tag=piglinims,tag=imsbottom] run particle dust{color:[1.000,0.640,0.000],scale:1} ~ ~0.75 ~ 0.4 0.5 0.4 0 1 normal
execute at @s[tag=witherims,tag=imsbottom] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.75 ~ 0.4 0.5 0.4 0 1 normal
scoreboard players add @s[tag=imstnt] temp 1
execute if score @s[tag=imstnt] temp matches 900.. run tag @s add imsdestroy

execute as @s[tag=imsit] if data entity @s attack run tag @s add imshit
execute as @s[tag=imshit] run scoreboard players remove @s health 1
execute at @s[tag=imshit] run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=imshit] run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0 6 normal
execute as @s[tag=imshit] at @s on attacker if items entity @s[team=piglin] weapon.* iron_hoe run tag @n[tag=imshit] add imswrenchhitpiglin
execute as @s[tag=imshit] at @s on attacker if items entity @s[team=wither] weapon.* iron_hoe run tag @n[tag=imshit] add imswrenchhitwither
execute as @s[tag=imshit] at @s on attacker if items entity @s[team=piglinffa] weapon.* iron_hoe run tag @n[tag=imshit] add imswrenchhitpiglin
execute as @s[tag=imshit] at @s on attacker if items entity @s[team=witherffa] weapon.* iron_hoe run tag @n[tag=imshit] add imswrenchhitwither
tag @s[tag=imshit] remove imshit
execute as @s[tag=imsit,scores={health=..2}] run data remove entity @s attack
execute at @s[tag=imsit,scores={health=..0}] as @e[distance=..1.25,tag=imstnt] if score @s playerid = @n[tag=imsit] playerid run tag @s add imsdontexplode
execute at @s[tag=imsit,scores={health=..0}] as @e[distance=..1.25,tag=imstnt] if score @s playerid = @n[tag=imsit] playerid run tag @s add imsdestroy
execute at @s[tag=imsit,scores={health=..0}] as @e[distance=..1.25,tag=imstnt] if score @s playerid = @n[tag=imsit] playerid run scoreboard players set @s temp 900
execute at @s[tag=imsit,scores={health=..0}] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=imsit,scores={health=..0}] run particle block{block_state:"minecraft:sticky_piston"} ~ ~0.375 ~ 0.3 0.3 0.3 0 24 normal
execute as @s[tag=imsit,scores={health=..0}] run kill @s

execute at @s[tag=imstnt] if entity @e[distance=..1000,tag=gamemodeffa] as @a[distance=..3.5] unless score @s playerid = @n[tag=imstnt] playerid if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":false}}}} run tag @n[tag=imstnt] add imsprepare
execute at @s[tag=imstnt] as @a[distance=..1000,team=piglin] if score @s playerid = @n[tag=imstnt] playerid as @a[gamemode=!spectator,distance=..3.5,team=wither] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":false}}}} run tag @n[tag=imstnt] add imsprepare
execute at @s[tag=imstnt] as @a[distance=..1000,team=wither] if score @s playerid = @n[tag=imstnt] playerid as @a[gamemode=!spectator,distance=..3.5,team=piglin] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":false}}}} run tag @n[tag=imstnt] add imsprepare

scoreboard players add @s[tag=imsprepare] temp2 1
execute as @s[tag=imsprepare,scores={temp2=1}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.7 0
execute as @s[tag=imsprepare,scores={temp2=1}] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 1.35 0
execute as @s[tag=imsprepare,scores={temp2=1}] at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0 12 normal
execute as @s[tag=imsprepare,scores={temp2=1}] at @s positioned ~ ~-0.75 ~ as @n[tag=imstop,distance=..2] if score @s playerid = @n[tag=imsprepare] playerid run tag @s add imsjump
execute as @s[tag=imsprepare,scores={temp2=1}] at @s positioned ~ ~-0.75 ~ as @n[tag=imstop,distance=..2] if score @s playerid = @n[tag=imsprepare] playerid run tp @s ~ ~0.75 ~
execute as @s[tag=imsprepare,scores={temp2=1}] at @s run tp @s ~ ~0.75 ~
execute as @s[tag=imsprepare,scores={temp2=3}] run data modify entity @s teleport_duration set value 4
execute as @s[tag=imsprepare,scores={temp2=4}] at @s run tp @s ~ ~0.675 ~
execute as @s[tag=imsprepare,scores={temp2=7}] run data modify entity @s teleport_duration set value 7
execute as @s[tag=imsprepare,scores={temp2=8}] at @s run tp @s ~ ~0.6 ~

execute if score @s[tag=imsprepare] temp2 matches 16.. run tag @s add imsdestroy

execute at @s[tag=imsdestroy,tag=!imsdontexplode] run particle explosion ~ ~0.375 ~ 1 1 1 0 40 normal
execute at @s[tag=imsdestroy,tag=!imsdontexplode] run playsound entity.generic.explode master @a ~ ~ ~ 1 1 0
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @e[distance=..3.5,type=!player] run damage @n 20 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @e[distance=..4.75,type=!player] run damage @n 16 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @e[distance=..6,type=!player] run damage @n 12 player_explosion by @s

execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..3.5,scores={sneak=0}] run damage @p[gamemode=!spectator] 20 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..4.75,scores={sneak=0}] run damage @p[gamemode=!spectator] 16 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..6,scores={sneak=0}] run damage @p[gamemode=!spectator] 12 player_explosion by @s

execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..3.5,scores={sneak=1..}] run damage @p[gamemode=!spectator] 10 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..4.75,scores={sneak=1..}] run damage @p[gamemode=!spectator] 8 player_explosion by @s
execute at @s[tag=imsdestroy,tag=!imsdontexplode] as @a[distance=..1000] if score @s playerid = @n[tag=imsdestroy] playerid at @a[distance=..6,scores={sneak=1..}] run damage @p[gamemode=!spectator] 6 player_explosion by @s

execute at @s[tag=imsdestroy] as @e[distance=..3.5,tag=!imstnt,tag=imstop] if score @s playerid = @n[tag=imsdestroy] playerid run tag @s add imsrestore
execute at @s[tag=imsdestroy,scores={temp=900..}] as @e[distance=..3.5,tag=!imstnt,tag=imstop] if score @s playerid = @n[tag=imsdestroy] playerid run kill @s
execute at @s[tag=imsdestroy,scores={temp=900..}] as @e[distance=..3.5,tag=!imstnt,tag=imsbottom] if score @s playerid = @n[tag=imsdestroy] playerid run kill @s
execute at @s[tag=imsdestroy,scores={temp=900..}] as @e[distance=..3.5,tag=!imstnt,tag=imsit] if score @s playerid = @n[tag=imsdestroy] playerid run kill @s
kill @s[tag=imsdestroy]

scoreboard players add @s[tag=imsrestore] temp3 1
execute at @s[tag=imsrestore,scores={temp3=40}] run tp @s ~ ~-0.75 ~
execute at @s[tag=imsrestore,scores={temp3=40}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=imsrestore,scores={temp3=40}] run particle minecraft:large_smoke ~ ~0.375 ~ 0.4 0.4 0.4 0 12 normal
execute at @s[tag=imsrestore,scores={temp3=60}] run scoreboard players remove @s count 1
execute at @s[tag=imsrestore,scores={temp3=60,count=0}] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.7 0
execute at @s[tag=imsrestore,scores={temp3=60,count=0}] run particle block{block_state:"minecraft:sticky_piston"} ~ ~0.375 ~ 0.3 0.3 0.3 0 24 normal
execute at @s[tag=imsrestore,scores={temp3=60,count=0}] as @e[distance=..0.1,tag=imspart] if score @s playerid = @n[tag=imsrestore] playerid run kill @s[tag=!imsrestore]
execute at @s[tag=imsrestore,scores={temp3=60,count=0}] run kill @s
execute at @s[tag=imsrestore,scores={temp3=60}] run playsound block.piston.extend master @a ~ ~ ~ 1 1.2 0
execute at @s[tag=imsrestore,scores={temp3=60}] run particle minecraft:poof ~ ~1.125 ~ 0.4 0.4 0.4 0 20 normal
execute at @s[tag=imsrestore,scores={temp3=60}] run summon block_display ~ ~0.75 ~ {Tags:["imspart","imsinit","imstnt"],block_state:{Name:"tnt"}}
execute at @s[tag=imsrestore,scores={temp3=60}] run scoreboard players operation @e[tag=imsinit,distance=..1] playerid = @s playerid
execute at @s[tag=imsrestore,scores={temp3=60}] run tag @s add imsrestoredone

execute as @s[tag=imsrestoredone] run scoreboard players reset @s temp3
execute as @s[tag=imsrestoredone] run tag @s remove imsrestore
execute as @s[tag=imsrestoredone] run tag @s remove imsrestoredone