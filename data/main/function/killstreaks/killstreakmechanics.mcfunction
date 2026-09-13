execute as @a[scores={stonebuttonuse=1..},team=piglin] at @s run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] piglinuav 1
execute as @a[scores={stonebuttonuse=1..},team=wither] at @s run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] witheruav 1
execute as @a[scores={stonebuttonuse=1..}] at @s if entity @e[tag=gamemodeffa,distance=..1000] run scoreboard players set @s ffauav 1

execute as @a[scores={ffauav=1..}] run function main:killstreaks/ffauav
execute as @e[tag=mpas] run function main:killstreaks/mpasuav
execute as @a[scores={stonebuttonuse=1..}] run tag @s remove uav
scoreboard players reset @a stonebuttonuse

execute as @a[scores={classslot12=2},tag=ingame] if data entity @s Inventory[{components:{"minecraft:potion_contents":{custom_color:11010558}}}] run tag @s add potionks
execute as @a[tag=ingame] unless data entity @s Inventory[{components:{"minecraft:potion_contents":{custom_color:11010558}}}] run tag @s remove potionks
execute if entity @e[type=area_effect_cloud] as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:11010558}}] run function main:killstreaks/buffpotion

execute as @a[scores={turtleegguse=1..}] run function main:killstreaks/turtleegguse
execute as @e[tag=supplydroptorch] run function main:killstreaks/supplydroptorch
execute as @e[tag=supplydropballoonmarker] run function main:killstreaks/supplydropballoon
execute as @e[tag=supplydropbd] run function main:killstreaks/supplydropbd
execute as @a[scores={turtleegguse=1..}] run tag @s remove supplydrop
scoreboard players reset @a turtleegguse

execute as @a[scores={blackstonebuttonuse=1..},team=piglin] at @s run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] piglinemp 1
execute as @a[scores={blackstonebuttonuse=1..},team=wither] at @s run scoreboard players set @e[tag=mpas,sort=nearest,limit=1] witheremp 1
execute as @a[scores={blackstonebuttonuse=1..}] at @s if entity @e[tag=gamemodeffa,distance=..1000] run scoreboard players set @s ffaemp 1

execute as @e[tag=mpas] run function main:killstreaks/mpasemp
execute as @a[scores={ffaemp=1}] run function main:killstreaks/playeremp
execute as @a[scores={ffaemp=1..}] at @s run scoreboard players reset @a[distance=0.1..1000] ffauav
execute as @e[tag=mpas,scores={piglinemp=1}] at @s run effect give @a[team=wither,distance=..1000] blindness 8 0 true
execute as @e[tag=mpas,scores={witheremp=1}] at @s run effect give @a[team=piglin,distance=..1000] blindness 8 0 true
execute as @a[scores={ffaemp=1}] at @s run effect give @a[distance=0.1..1000] blindness 8 0 true
scoreboard players add @e[tag=mpas,scores={piglinemp=1..}] piglinemp 1
scoreboard players add @e[tag=mpas,scores={witheremp=1..}] witheremp 1
scoreboard players add @a[scores={ffaemp=1..}] ffaemp 1
scoreboard players reset @e[tag=mpas,scores={piglinemp=140..}] piglinemp
scoreboard players reset @e[tag=mpas,scores={witheremp=140..}] witheremp
scoreboard players reset @a[scores={ffaemp=140..}] ffaemp
execute as @a[scores={blackstonebuttonuse=1..}] run tag @s remove emp
scoreboard players reset @a blackstonebuttonuse

execute as @a[tag=restock,tag=!juggernaut] run function main:killstreaks/restock
execute as @a[tag=restock,tag=juggernaut] run tag @s remove restock

execute as @a[tag=ingame] run function main:killstreaks/lightningroduse
execute as @e[tag=dummyhb] run function main:killstreaks/dummyhb
execute as @e[tag=plsstrike] run function main:killstreaks/plsstrike
tag @a[scores={lightningroduse=1..}] remove airstrike
scoreboard players reset @a lightningroduse

execute as @e[tag=loadoutdroptrap] run function main:killstreaks/loadoutdroptrap
tag @a[scores={villageregguse=1..}] remove trap
scoreboard players reset @a villageregguse

execute as @a[scores={stickypistonuse=1..},tag=ingame] run function main:killstreaks/imsinit
tag @a[scores={stickypistonuse=1..}] remove ims
scoreboard players reset @a stickypistonuse
execute as @e[tag=imspart] run function main:killstreaks/ims

execute as @a[scores={spawneruse=1..}] run function main:killstreaks/spawneruse
execute as @e[tag=ravagertrack] at @s rotated as @s at @e[tag=ravager,distance=..5] run tp @s ~ ~0.91 ~ ~ ~
execute as @e[tag=ravagertrack] at @s unless entity @e[tag=ravager,distance=..5] run kill @s
execute as @e[tag=ravager] run function main:killstreaks/ravager
scoreboard players reset @a spawneruse

execute as @a[scores={whitewooluse=1..},tag=ingame] run function main:killstreaks/gunshippropinit
execute as @e[tag=gunshipmain] run function main:killstreaks/gunship
execute as @e[tag=gunshiptnt] run function main:killstreaks/gunshiptnt
tag @a[scores={whitewooluse=1..}] remove gunship
scoreboard players reset @a whitewooluse

execute as @a[scores={classslot12=3,damagedealtperlife=400..,3killstreak=1}] run scoreboard players add @s healthregen 1
execute as @a[scores={classslot12=3,damagedealtperlife=400..,healthregen=1,3killstreak=1}] run effect give @s regeneration 3 0 true
execute as @a[scores={healthregen=100..}] run scoreboard players reset @s healthregen
execute as @e[tag=uaveye] run function main:killstreaks/uaveye

execute as @a[tag=got1perks] run function main:killstreaks/got1perks
execute as @a[tag=aura] run function main:killstreaks/aura

execute as @a[tag=got2perks,tag=!got2perksready] run function main:killstreaks/got2perks
execute as @a[tag=got2perks,scores={playerkill=1..}] run effect give @s strength 10 0 true

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:10066329}}},inGround:1b}] run function main:killstreaks/supercrossbow

execute as @a[scores={boneuse=1..}] run function main:killstreaks/boneuse
execute as @e[tag=wolfsummoninit] run function main:killstreaks/wolfinit
execute as @e[tag=wolf] run function main:killstreaks/wolf
tag @a[scores={boneuse=1..}] remove wolves
scoreboard players reset @a boneuse

execute as @a if items entity @s weapon.mainhand firework_star run scoreboard players set @s distance 9

execute as @a[scores={distance=1..}] run function main:killstreaks/distance
execute as @a[scores={fireworkstaruse=1..}] at @s run scoreboard players operation @e[tag=osinit,sort=nearest,limit=1] playerid = @s playerid
tag @e[tag=osinit] remove osinit
execute as @e[tag=orbitalstrike] run function main:killstreaks/orbitalstrike
execute as @e[tag=osbd] run function main:killstreaks/osbd
execute as @a[scores={fireworkstaruse=1..}] run scoreboard players reset @s distance
execute as @a unless items entity @s weapon.mainhand firework_star unless score @s fireworkstaruse matches 1.. run scoreboard players reset @s distance
scoreboard players reset @a fireworkstaruse

execute as @a[scores={netherstaruse=1..}] run function main:killstreaks/netherstaruse2

execute as @e[tag=mpas] run function main:killstreaks/mpasnuke

execute as @a[scores={netherstaruse=1..}] run function main:killstreaks/netherstaruse3

execute as @a[tag=ffanukeuser] run function main:killstreaks/ffanukeuser
scoreboard players add @e[tag=mpas,scores={piglinnuke=1..}] piglinnuke 1
scoreboard players add @e[tag=mpas,scores={withernuke=1..}] withernuke 1
scoreboard players add @a[tag=ffanukeuser,scores={ffanuke=1..}] ffanuke 1
execute at @e[tag=mpas,scores={withernuke=1..}] run scoreboard players set @a[distance=..1000] actionbarwait 60
execute at @e[tag=mpas,scores={piglinnuke=1..}] run scoreboard players set @a[distance=..1000] actionbarwait 60
execute at @e[tag=ffanukeuser] run scoreboard players set @a[distance=..1000] actionbarwait 60
execute as @a[scores={netherstaruse=1..}] run function main:killstreaks/netherstaruse
execute as @e[tag=nukebd] run function main:killstreaks/nukebd
execute as @e[tag=nukemainbd] run function main:killstreaks/nukemainbd
execute as @a[scores={netherstaruse=1..}] run tag @s remove nuke
scoreboard players reset @a netherstaruse