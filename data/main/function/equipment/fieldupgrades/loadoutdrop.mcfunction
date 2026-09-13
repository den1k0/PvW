execute as @s[tag=loadoutdropinit] at @s as @p[tag=hasfieldupgrade,scores={classslot9=2},nbt=!{Inventory:[{id:"minecraft:villager_spawn_egg"}]}] run tag @s remove hasfieldupgrade
execute as @s[tag=loadoutdropinit] at @s run playsound minecraft:music_disc.dodairdrop neutral @a ~ ~ ~ 0.5 1 0
execute as @s[tag=loadoutdropinit] at @s run tp @s ~ ~32 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] at @s if biome ~ ~ ~ the_void run tp @s ~ ~-2 ~
execute as @s[tag=loadoutdropinit] run tag @s add findair
execute as @s[tag=findair] at @s unless block ~ ~ ~ #air run tp @s ~ ~-1 ~
execute as @s[tag=findair] at @s if block ~ ~ ~ #air run tag @s remove findair
execute as @s at @s if block ~ ~-0.25 ~ #air run tp @s ~ ~-0.25 ~
execute as @s[tag=!findair] at @s as @a[gamemode=!spectator,distance=..1.25] run tag @s add loadout
execute as @s[tag=!findair] at @s if entity @a[gamemode=!spectator,distance=..1.25] run playsound minecraft:block.piston.contract neutral @a ~ ~ ~ 1 1.2 0
execute as @s[tag=!findair] at @s if entity @a[gamemode=!spectator,distance=..1.25] run particle minecraft:poof ~ ~0.25 ~ 0.4 0.4 0.4 0 20 normal
execute as @s[tag=!findair] at @s as @a[gamemode=!spectator,distance=..1.25] run tag @s add loadouttaken
execute as @s[tag=!findair] at @s if entity @a[gamemode=!spectator,distance=..1.25] run kill @s
execute at @s run particle minecraft:dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.25 ~ 1 1 1 0 1 normal
execute at @s if block ~ ~-0.25 ~ #air run particle poof ~ ~0.5 ~ 0.2 0.2 0.2 0 4 normal
execute as @s[tag=loadoutdropinit] run data modify entity @s transformation.translation set value [-0.5f,0.0f,-0.5f]
execute as @s[tag=loadoutdropinit] run data modify entity @s teleport_duration set value 1
tag @s[tag=loadoutdropinit] remove loadoutdropinit
scoreboard players add @s temp 1
execute as @s[scores={temp=600}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.7 0
execute as @s[scores={temp=600}] at @s run particle block{block_state:"minecraft:barrel"} ~ ~0.25 ~ 0.3 0.3 0.3 0 24 normal
kill @s[scores={temp=600..}]