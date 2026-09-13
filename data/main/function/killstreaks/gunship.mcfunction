execute at @s[tag=gunshipmaininit] at @n[tag=spawn,distance=..1000] run tp @s ~ ~24 ~ facing entity @e[tag=hardpoint,sort=random,limit=1]
execute at @s[tag=gunshipmaininit] run tp @s ~ ~ ~ ~ 0
execute at @s[tag=gunshipmaininit] run summon minecart ~ ~ ~ {Tags:["gunshipcart","gunshippart"],NoGravity:1b,Invulnerable:1b}
execute at @s[tag=gunshipmaininit] run summon block_display ~ ~ ~ {block_state:{Name:"hopper"},Tags:["gunship1","gunshippart"]}
execute at @s[tag=gunshipmaininit] run summon block_display ~ ~ ~ {block_state:{Name:"chain"},Tags:["gunship2","gunshippart"]}
execute at @s[tag=gunshipmaininit] run summon block_display ~ ~ ~ {block_state:{Name:"chain"},Tags:["gunship3","gunshippart"]}
execute at @s[tag=gunshipmaininit] run summon block_display ~ ~ ~ {block_state:{Name:"yellow_wool"},Tags:["gunship4","gunshippart"]}
execute at @s[tag=gunshipmaininit] if entity @p[scores={whitewooluse=1..},team=piglin,distance=..1000] as @e[tag=gunship4,distance=..0.1] run data modify entity @s block_state.Name set value "orange_wool"
execute at @s[tag=gunshipmaininit] if entity @p[scores={whitewooluse=1..},team=wither,distance=..1000] as @e[tag=gunship4,distance=..0.1] run data modify entity @s block_state.Name set value "light_blue_wool"
execute at @s[tag=gunshipmaininit] as @e[tag=gunshippart,distance=..0.1] run data modify entity @s teleport_duration set value 1
execute at @s[tag=gunshipmaininit] as @e[tag=gunship1,distance=..0.1] run data modify entity @s transformation.scale set value [3f,3f,7f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship1,distance=..0.1] run data modify entity @s transformation.translation set value [-1.5f,0.0f,-3.5f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship2,distance=..0.1] run data modify entity @s transformation.scale set value [3f,3f,3f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship2,distance=..0.1] run data modify entity @s transformation.translation set value [-1.5f,0.0f,-1.5f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship3,distance=..0.1] run data modify entity @s transformation.scale set value [3f,3f,3f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship3,distance=..0.1] run data modify entity @s transformation.translation set value [-1.5f,0.0f,-1.5f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship4,distance=..0.1] run data modify entity @s transformation.scale set value [5f,5f,10f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunship4,distance=..0.1] run data modify entity @s transformation.translation set value [-2.5f,0.0f,-5f]
execute at @s[tag=gunshipmaininit] as @e[tag=gunshippart,distance=..0.01,type=!marker] unless score @s playerid matches 1.. store result score @s playerid run scoreboard players get @n[tag=gunshipmaininit] playerid
execute at @s[tag=gunshipmaininit] as @a[distance=..1000] if score @s playerid = @n[tag=gunshipmain] playerid run ride @s mount @n[tag=gunshipcart]

tag @s remove gunshipmaininit

execute at @s as @e[distance=..100,tag=gunshipcart] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ~ ~ ~ ~ ~
execute at @s as @e[distance=..100,tag=gunship1] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ~ ~-3 ~ ~ ~
execute at @s as @e[distance=..100,tag=gunship2] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ^ ^ ^2.75 ~ ~
execute at @s as @e[distance=..100,tag=gunship3] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ^ ^ ^-2.75 ~ ~
execute at @s as @e[distance=..100,tag=gunship4] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ~ ~3 ~ ~ ~
execute at @s run playsound minecraft:block.shulker_box.close master @a ~ ~ ~ 1.95 0.62 0
execute at @s run particle large_smoke ~ ~-1 ~ 1 1 1 0.1 1 force

scoreboard players add @s temp 1
execute if score @s temp matches 600 run tag @s add gunshipdestroy
execute at @s unless entity @a[distance=..128] run scoreboard players set @s temp 600
execute at @s run scoreboard players set @a[distance=..2] actionbarwait 2
execute at @s run title @a[distance=..2] actionbar ["",{"keybind":"key.left","color":"gold"},{"text": "/"},{"keybind":"key.right","color":"gold"},{"text":" - Rotate ","color":"aqua"},{"text": "| "},{"keybind":"key.jump","color":"gold"},{"text":" - TNT Drop ","color":"aqua"},{"text": "| "},{"keybind":"key.sprint","color":"gold"},{"text":" - Fireball Shoot","color":"aqua"}]

execute at @s unless entity @e[distance=..1000,tag=gunshipprop] run tag @s add gunshippropkilled
execute at @s as @e[distance=..1000,tag=gunshipprop] unless score @s playerid = @n[tag=gunshipmain] playerid run tag @n[tag=gunshipmain] add gunshippropkilled
execute at @s as @e[distance=..1000,tag=gunshipprop] if score @s playerid = @n[tag=gunshipmain] playerid run tag @n[tag=gunshipmain] remove gunshippropkilled

execute as @s[tag=gunshippropkilled] run tag @s add gunshipdestroy
execute at @s[tag=gunshippropkilled] as @a[distance=..10] if score @s playerid = @n[tag=gunshipmain] playerid run kill @s

execute at @s[tag=gunshipdestroy] run particle poof ~ ~-4 ~ 1.5 1.2 1.5 0.25 120 force
execute at @s[tag=gunshipdestroy] run playsound entity.generic.explode master @a ~ ~ ~ 2 1 0
execute at @s[tag=gunshipdestroy] as @e[distance=..1000,tag=gunshippart,type=!marker] if score @s playerid = @n[tag=gunshipmain] playerid run kill @s
execute at @s[tag=gunshipdestroy,tag=!gunshippropkilled] as @e[distance=..1000,tag=gunshipprop] if score @s playerid = @n[tag=gunshipmain] playerid run tp @a[distance=..4] @s
execute at @s[tag=gunshipdestroy] as @e[distance=..1000,tag=gunshipprop] if score @s playerid = @n[tag=gunshipmain] playerid at @s run particle poof ~ ~1 ~ 0.3 0.4 0.3 0.05 20 normal
execute at @s[tag=gunshipdestroy] as @e[distance=..1000,tag=gunshipprop] if score @s playerid = @n[tag=gunshipmain] playerid run tp @s ~ ~-32 ~
execute at @s[tag=gunshipdestroy] as @e[distance=..1000,tag=gunshipprop] if score @s playerid = @n[tag=gunshipmain] playerid run kill @s
kill @s[tag=gunshipdestroy]

execute at @s run tp @s ^ ^ ^0.25
execute at @s as @a[distance=..4] if score @s playerid = @n[tag=gunshipmain] playerid if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"left":true}}}} as @n[tag=gunshipmain] run tp @s ~ ~ ~ ~-5 ~
execute at @s as @a[distance=..4] if score @s playerid = @n[tag=gunshipmain] playerid if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"right":true}}}} as @n[tag=gunshipmain] run tp @s ~ ~ ~ ~5 ~
execute at @s as @a[distance=..4] if score @s playerid = @n[tag=gunshipmain] playerid if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sprint":true}}}} as @n[tag=gunshipmain] run tag @s add gunshipfireball
execute at @s as @a[distance=..4] if score @s playerid = @n[tag=gunshipmain] playerid if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"jump":true}}}} as @n[tag=gunshipmain] run tag @s add gunshiptntthrow

execute at @s[tag=gunshipfireball] unless score @s temp2 matches 1.. as @a[distance=..10] if score @s playerid = @n[tag=gunshipmain] playerid positioned ~ ~-1 ~ anchored eyes rotated ~ ~45 positioned ^ ^ ^2 summon minecraft:fireball summon minecraft:area_effect_cloud positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon minecraft:area_effect_cloud at @e[type=minecraft:area_effect_cloud,nbt={Age:0}] run data modify entity @e[type=minecraft:fireball,distance=..0.1,limit=1] Motion set from entity @s Pos
execute at @s[tag=gunshipfireball] unless score @s temp2 matches 1.. as @a[distance=..10] if score @s playerid = @n[tag=gunshipmain] playerid positioned ~ ~-1 ~ anchored eyes positioned ^ ^ ^0.5 as @e[distance=..4,type=fireball] run data modify entity @s Owner set from entity @s UUID
execute at @s[tag=gunshipfireball] unless score @s temp2 matches 1.. run playsound item.crossbow.shoot master @a ~ ~ ~ 2 0.7 0

execute as @s[tag=gunshipfireball] run scoreboard players add @s temp2 1
execute as @s[scores={temp2=6..}] run tag @s remove gunshipfireball
execute as @s[scores={temp2=6..}] run scoreboard players set @s temp2 0

execute at @s[tag=gunshiptntthrow] unless score @s temp3 matches 1.. as @a[distance=..10] if score @s playerid = @n[tag=gunshipmain] playerid run summon block_display ~ ~ ~ {block_state:{Name:"tnt"},Tags:["gunshiptnt","gunshiptntinit"]}
execute at @s[tag=gunshiptntthrow] unless score @s temp3 matches 1.. as @a[distance=..10] if score @s playerid = @n[tag=gunshipmain] playerid run scoreboard players operation @n[tag=gunshiptntinit] playerid = @s playerid
execute at @s[tag=gunshiptntthrow] unless score @s temp3 matches 1.. run playsound entity.creeper.primed master @a ~ ~ ~ 2 0.7 0

execute as @s[tag=gunshiptntthrow] run scoreboard players add @s temp3 1
execute as @s[scores={temp3=40..}] run tag @s remove gunshiptntthrow
execute as @s[scores={temp3=40..}] run scoreboard players reset @s temp3
