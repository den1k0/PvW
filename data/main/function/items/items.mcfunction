execute as @s[scores={shieldbash=1..}] run function main:items/shieldbash
execute as @s[scores={shieldtemp=1..}] run function main:items/shieldtemp

function main:items/itemeffect

function main:items/playerheads

execute as @s[scores={endroduse=1..}] run function main:items/endroduse
execute as @s[tag=loadoffhandarrow] run function main:items/loadoffhandarrow
execute as @s[tag=loadarrow] run function main:items/loadarrow
execute as @s[tag=loadarrowforoffhandcrossbow] run function main:items/loadarrowforoffhandcrossbow
scoreboard players reset @s endroduse

execute as @s[scores={crossbowuse=1..}] run function main:items/crossbowuse
scoreboard players reset @s bowuse
scoreboard players reset @s crossbowuse

execute as @s[scores={flintuse=1..}] at @s as @e[distance=..1000,tag=c4] if score @s playerid = @a[sort=nearest,limit=1,scores={flintuse=1..}] playerid run tag @s add detonated
scoreboard players reset @s flintuse

function main:items/battleaxespeed

execute as @s[scores={damagetaken=1..,fieldupgrade=..360}] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players set @p[gamemode=!spectator,scores={damagetaken=1..}] fieldupgrade 0
execute as @s[scores={damagetaken=1..,fieldupgrade=360..}] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players remove @p[gamemode=!spectator,scores={damagetaken=1..}] fieldupgrade 360
execute as @s[scores={damagedealt=1..}] if items entity @s weapon.mainhand iron_hoe at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 1.2 0

execute as @s[scores={ftcooldown=1..}] run scoreboard players add @s ftcooldown 1
execute as @s[scores={ftcooldown=5..}] run advancement revoke @s only main:flamethrower
execute as @s[scores={ftcooldown=5..}] run scoreboard players reset @s ftcooldown

execute as @s[scores={binocularstemp=1..}] run scoreboard players add @s binocularstemp 1
execute as @s[scores={binocularstemp=2..}] run advancement revoke @s only main:binoculars
execute as @s[scores={binocularstemp=2..}] run scoreboard players reset @s binocularstemp

execute as @s[scores={classslot5=3}] run attribute @s knockback_resistance modifier add kbr1 0.3 add_value
execute as @s unless score @s classslot5 matches 3 run attribute @s knockback_resistance modifier remove kbr1

execute as @s[scores={pistonuse=1..},tag=ingame] run function main:items/pistonuse

execute as @s[scores={tripwirehookuse=1..},tag=ingame] run function main:items/tripwirehookuse

execute as @s[scores={noteblockuse=1..},tag=ingame] run function main:items/noteblockuse

execute as @s[scores={hopperminecartuse=1..}] run function main:items/hopperminecartuse