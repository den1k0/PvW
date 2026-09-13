execute as @s[scores={classslot2=1..2}] run give @s arrow 4
execute as @s[scores={classslot2=6}] run give @s arrow 3
execute as @s[scores={classslot2=7}] run give @s gunpowder 6
execute as @s[scores={classslot2=4}] run give @s firework_rocket[fireworks={flight_duration:1,explosions:[{shape:"burst",has_trail:true,colors:[12725261],fade_colors:[4539717]},{shape:"burst",has_trail:true,colors:[14709769],fade_colors:[3026478]}]}] 4
effect give @s saturation 1 0 true
execute as @s[scores={classslot2=3}] run scoreboard players set @s shieldbash 20
execute as @s[scores={classslot2=3}] run scoreboard players set @s shieldtemp 100