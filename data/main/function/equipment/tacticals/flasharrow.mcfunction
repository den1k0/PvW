execute at @s run effect give @a[distance=..5,gamemode=!spectator] minecraft:blindness 4 0 true
execute at @s run effect give @a[distance=5..5.75,gamemode=!spectator] minecraft:blindness 3 0 true
execute at @s run effect give @a[distance=5.75..6.5,gamemode=!spectator] minecraft:blindness 2 0 true
execute at @s run effect give @a[distance=6.5..7.25,gamemode=!spectator] minecraft:blindness 1 0 true
execute at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1.5 0.7 0
execute at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 1 1 1 0 50 normal
kill @s