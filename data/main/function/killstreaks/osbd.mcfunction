scoreboard players add @s timer 1
execute as @s[tag=osbd,scores={timer=1}] at @s run tp @s ~ ~ ~ ~20 ~30
execute as @s[tag=osbd1,scores={timer=1}] run data modify entity @s transformation.translation set value [-0.25f,-1.0f,-0.25f]
execute as @s[tag=osbd2,scores={timer=1}] run data modify entity @s transformation.translation set value [-0.375f,-1.0f,-0.375f]
execute as @s[tag=osbd1,scores={timer=1}] run data modify entity @s transformation.scale set value [0.5f,50.0f,0.5f]
execute as @s[tag=osbd2,scores={timer=1}] run data modify entity @s transformation.scale set value [0.75f,50.0f,0.75f]
kill @s[tag=osbd,scores={timer=10..}]