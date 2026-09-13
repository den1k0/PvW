execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^1.5 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^3 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^4.5 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^6 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^7.5 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[tag=ingame] if items entity @s weapon.mainhand lightning_rod at @s rotated ~ 0 positioned ^ ^ ^9 run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.25 0.01 0.25 0 2 normal
execute as @s[scores={lightningroduse=1..},tag=ingame] at @s run summon minecraft:armor_stand ~ ~ ~ {HurtByTimestamp: 0, Invulnerable: 1b, FallFlying: 0b, ShowArms: 1b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DeathTime: 0s, Pose: {}, Invisible: 0b, Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 0b, Rotation: [-0.0f, -0.0f], HandItems: [{}, {}], Fire: -1s, ArmorItems: [{},{},{},{}], NoBasePlate: 0b, HurtTime: 0s, Tags:["dummyhb"],DisabledSlots:2096896,NoBasePlate:1b,NoGravity:1b,Invisible:1b}
execute as @s[scores={lightningroduse=1..},tag=ingame] at @s as @e[tag=dummyhb,sort=nearest,limit=1] run scoreboard players operation @s playerid = @p[scores={lightningroduse=1..}] playerid
execute as @s[scores={lightningroduse=1..},tag=ingame] at @s run tp @e[tag=dummyhb,sort=nearest,limit=1] ~ ~10 ~ ~ 0

execute as @s[scores={lightningroduse=1..},team=wither] at @s run playsound minecraft:music_disc.warmilourairstrike voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..},team=wither] at @s run playsound minecraft:music_disc.warabenemyairstrike voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..},team=piglin] at @s run playsound minecraft:music_disc.warmilenemyairstrike voice @a[team=wither,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..},team=piglin] at @s run playsound minecraft:music_disc.warabourairstrike voice @a[team=piglin,distance=..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warmilourairstrike voice @s[team=witherffa] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warabenemyairstrike voice @a[team=piglinffa,distance=0.1..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warmilenemyairstrike voice @a[team=witherffa,distance=0.1..1000] ~ ~ ~ 1 1 1
execute as @s[scores={lightningroduse=1..}] if entity @e[tag=gamemodeffa,distance=..1000] at @s run playsound minecraft:music_disc.warabourairstrike voice @s[team=piglinffa] ~ ~ ~ 1 1 1
