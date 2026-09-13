execute at @s[scores={netherstaruse=1..}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["nukebd","nukemainbd"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute at @s[scores={netherstaruse=1..}] run summon minecraft:block_display ~ ~180 ~ {Tags:["nukebd","nukebdpart1"],block_state:{Name:"netherite_block"},view_range:2.0f}
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart1,limit=1,sort=nearest] transformation.scale set value [7.0f,28.0f,7.0f]
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart1,limit=1,sort=nearest] transformation.translation set value [-3.5f,-14.0f,-3.5f]
execute at @s[scores={netherstaruse=1..}] run summon minecraft:block_display ~ ~180 ~ {Tags:["nukebd","nukebdpart2"],block_state:{Name:"iron_block"},view_range:2.0f}
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart2,limit=1,sort=nearest] transformation.scale set value [8f,12f,8f]
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart2,limit=1,sort=nearest] transformation.translation set value [-4f,-6f,-4f]
execute at @s[scores={netherstaruse=1..}] run summon minecraft:block_display ~ ~180 ~ {Tags:["nukebd","nukebdpart3"],block_state:{Name:"reinforced_deepslate"},view_range:2.0f}
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart3,limit=1,sort=nearest] transformation.scale set value [6.0f,6f,6f]
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart3,limit=1,sort=nearest] transformation.translation set value [-3.0f,-3.0f,-3.0f]
execute at @s[scores={netherstaruse=1..}] run summon minecraft:block_display ~ ~180 ~ {Tags:["nukebd","nukebdpart4"],block_state:{Name:"iron_block"},view_range:2.0f}
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart4,limit=1,sort=nearest] transformation.scale set value [8f,12f,8f]
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart4,limit=1,sort=nearest] transformation.translation set value [-4f,-6f,-4f]
execute at @s[scores={netherstaruse=1..}] run summon minecraft:block_display ~ ~180 ~ {Tags:["nukebd","nukebdpart5"],block_state:{Name:"deepslate_tile_wall"},view_range:2.0f}
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart5,limit=1,sort=nearest] transformation.scale set value [8f,8f,8f]
execute at @s[scores={netherstaruse=1..}] run data modify entity @e[tag=nukebdpart5,limit=1,sort=nearest] transformation.translation set value [-4f,-4f,-4f]
execute at @s[scores={netherstaruse=1..}] as @e[tag=nukemainbd,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 0 24 false @s
execute at @s[scores={netherstaruse=1..}] as @e[tag=nukemainbd,sort=nearest,limit=1] at @s run tp @s ~ ~180 ~
execute at @s[scores={netherstaruse=1..}] as @e[tag=nukebd,distance=..1000] run data modify entity @s teleport_duration set value 1