scoreboard players remove @s timer 1
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @a[distance=..1000] at @s run playsound music_disc.qflagsound master @s ~ ~ ~ 0.5 1 0
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] run tag @n[tag=bombplant] add bombplantbombed
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @e[distance=..1000,tag=bombplant,sort=random,limit=1,tag=!bombplantdem] run tag @s add bombplantdem
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] at @e[distance=..1000,tag=bombplantdem,tag=!bombplantbombed] run summon minecraft:block_display ~-0.95 ~ ~-0.95 {block_state:{Name:"minecraft:netherite_block"},Tags:["sndbd"],Glowing:1b}
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] as @e[tag=sndbd,distance=..1000] run data modify entity @s transformation.scale set value [1.9f,0.125f,1.9f]
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] if entity @e[tag=bombplant,tag=!bombplantbombed,distance=..1000] run tellraw @a[distance=..1000] {"text":"+120 SECONDS TO TIMER","bold":true,"color":"yellow"}
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,distance=..1000] if entity @e[tag=bombplant,tag=!bombplantbombed,distance=..1000] run scoreboard players add @n[tag=gamemodedem] timer 1200

execute as @s[scores={timer=..0}] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 3 3 3 0 60 normal
execute as @s[scores={timer=..0}] at @s as @a[distance=..4] run damage @s 20 minecraft:explosion by @a[limit=1,tag=bombplanter,sort=nearest,distance=..1000]
execute as @s[scores={timer=..0}] at @s as @a[distance=..6] run damage @s 15 minecraft:explosion by @a[limit=1,tag=bombplanter,sort=nearest,distance=..1000]
execute as @s[scores={timer=..0}] at @s as @a[distance=..8] run damage @s 10 minecraft:explosion by @a[limit=1,tag=bombplanter,sort=nearest,distance=..1000]
execute as @s[scores={timer=..0}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.7 0
execute as @s[scores={timer=..0}] at @s run particle minecraft:lava ~ ~1.5 ~ 1 1 1 0 50 normal
execute as @s[scores={timer=..0}] at @s run scoreboard players add @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] Piglins 1
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodesnd,tag=mp4as,distance=..1000] run bossbar set mp4bomb visible false
execute as @s[scores={timer=..0}] at @s if entity @e[tag=gamemodedem,tag=mp9as,distance=..1000] run bossbar set mp9bomb visible false
execute as @s[scores={timer=..0}] at @s run tag @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] add nextround
execute as @s[scores={timer=..0}] at @s run tag @e[tag=gamemodesnd,sort=nearest,limit=1,distance=..1000] add piglinsroundwin
execute at @s[scores={timer=..0}] run tag @a[distance=..1000] remove bombplanter

execute as @s[scores={timer=..0}] at @s unless entity @e[tag=bombplant,tag=!bombplantbombed,distance=..1000] run scoreboard players add @e[tag=gamemodedem,sort=nearest,limit=1,distance=..1000] Piglins 1
execute as @s[scores={timer=..0}] at @s unless entity @e[tag=bombplant,tag=!bombplantbombed,distance=..1000] run tag @e[tag=gamemodedem,sort=nearest,limit=1,distance=..1000] add nextround
execute as @s[scores={timer=..0}] at @s unless entity @e[tag=bombplant,tag=!bombplantbombed,distance=..1000] run tag @e[tag=gamemodedem,sort=nearest,limit=1,distance=..1000] add piglinsroundwin

execute as @s[scores={timer=..0}] at @s run kill @s
execute at @s if entity @e[tag=gamemodesnd,distance=..1000] if score @s timer matches 969 run playsound minecraft:music_disc.ovobombtwo music @a[distance=..1000] ~ ~ ~ 0.35 1 0.35
execute at @s if entity @e[tag=gamemodedem,distance=..1000] if score @s timer matches 599 run playsound minecraft:music_disc.ovobombtwo music @a[distance=..1000] ~ ~ ~ 0.35 1 0.35
execute at @s if score @s timer matches 200 run playsound minecraft:music_disc.ovobombone music @a[distance=..1000] ~ ~ ~ 0.35 1 0.35
execute at @s if score @s timer matches 200 run stopsound @a[distance=..1000] * minecraft:music_disc.ovobombtwo
execute as @s[scores={timer2=20}] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1.5 0.5 0
execute as @s[scores={timer2=40}] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1.5 0.7 0
execute as @s[scores={timer2=40}] run scoreboard players reset @s timer2

execute at @s positioned ~0.375 ~-1 ~0.375 as @a[distance=..1.65,gamemode=!spectator] if items entity @s weapon.mainhand shears run scoreboard players add @s defusing 1
execute at @s positioned ~0.375 ~-1 ~0.375 as @a[distance=..1.65,gamemode=!spectator] unless items entity @s weapon.mainhand shears run scoreboard players reset @s defusing
execute at @s positioned ~0.375 ~-1 ~0.375 as @a[distance=1.651..5] run scoreboard players reset @s defusing
execute at @s positioned ~0.375 ~-1 ~0.375 as @a[distance=..3.5,gamemode=!spectator] if items entity @s weapon.mainhand shears unless score @s defusing matches 0.. run title @s actionbar {"text":"BOMB TOO FAR AWAY","bold":true,"color":"red"}
