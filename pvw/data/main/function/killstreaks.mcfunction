execute as @a[scores={killstreak=0}] run scoreboard players set @s temp2 0
execute as @a[scores={killstreak=3,temp2=..2,classslot12=2}] at @s run playsound minecraft:music_disc.iiradarfive voice @s ~ ~ ~ 1 1 0
execute as @a[scores={killstreak=3,temp2=..2,classslot12=2}] run playsound minecraft:music_disc.tdmabgotuav voice @s[team=piglin] ~ ~ ~ 0.4 1 0.4
execute as @a[scores={killstreak=3,temp2=..2,classslot12=2}] run playsound minecraft:music_disc.tdmmilgotuav voice @s[team=wither] ~ ~ ~ 0.4 1 0.4
#execute as @a[scores={killstreak=3..,temp2=..2,classslot12=2}] run give @s stone_button[custom_name='["",{"text":"Press RMB To Use UAV","italic":false,"color":"green"}]',enchantments={levels:{sharpness:0}}]
#execute as @a[scores={killstreak=3..,temp2=..2,classslot12=2}] run tag @s add uav
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=2}] run title @s actionbar {"text":"You got UAV!","color":"gold"}
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0 50 normal
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] at @s run effect give @s minecraft:regeneration 10 2 false
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] at @s run effect give @s minecraft:speed 5 1 true
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] at @s run effect give @s minecraft:absorption 10 0 true
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 1 1 0
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=3}] run title @s actionbar {"text":"You got MEGABUFF!","color":"gold"}
execute as @a[scores={killstreak=3,temp2=..2,classslot12=1}] at @s run playsound minecraft:music_disc.warsoundthree music @s ~ ~ ~ 1 0.85 0
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=1}] run title @s actionbar {"text":"You got EQUIPMENT RESTOCK!","color":"gold"}
#execute as @a[scores={killstreak=3..,temp2=..2,classslot12=1}] run tag @s add restock
execute as @a[scores={killstreak=3..,temp2=..2,classslot12=1}] at @s run particle minecraft:poof ~ ~1 ~ 1 1 1 0 20 normal
execute as @a[scores={killstreak=3..,temp2=..2}] run scoreboard players set @s temp2 3