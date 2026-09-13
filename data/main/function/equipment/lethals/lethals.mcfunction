execute as @e[type=trident] run function main:equipment/lethals/tomahawk
clear @a minecraft:trident[minecraft:damage=249]

execute as @e[tag=creeper] run function main:equipment/lethals/creeperclaymore
execute as @a[scores={creeperspawnegg=1..}] unless score @s voiceovertimer matches 1.. run function main:voiceover/claymoreuse
scoreboard players reset @a creeperspawnegg

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:7083032}}},inGround:1b},tag=!molotoved] run function main:equipment/lethals/molotovarrow
execute as @e[tag=molotoved] run function main:equipment/lethals/molotovarrow

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:3684408}}},inGround:1b},tag=!drilling] run function main:equipment/lethals/drillarrow
execute as @e[tag=drilling] run function main:equipment/lethals/drillarrow
execute as @e[tag=drilled] run function main:equipment/lethals/drillarrow

execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:11161680}}] run tag @s add grenadeexplode
execute as @e[tag=potionid] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..1] run kill @s
execute as @e[tag=grenadeexplode] run function main:equipment/lethals/grenadepotion
execute at @e[type=splash_potion] run summon minecraft:marker ~ ~ ~ {Tags:["potionid"]}
execute at @e[type=lingering_potion] run summon minecraft:marker ~ ~ ~ {Tags:["potionid"]}
execute as @e[tag=potionid] at @s run scoreboard players operation @s playerid = @e[limit=1,sort=nearest,type=splash_potion] playerid
execute as @e[tag=potionid] at @s run scoreboard players operation @s playerid = @e[limit=1,sort=nearest,type=lingering_potion] playerid
kill @e[tag=grenadeexplode]

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:4281871}}}},tag=!semtex] run function main:equipment/lethals/semtexarrow
execute as @e[tag=semtex] run function main:equipment/lethals/semtexarrow

execute as @e[tag=c4] run function main:equipment/lethals/c4slime
execute as @a[scores={magmaspawnegg=1..}] unless score @s voiceovertimer matches 1.. run function main:voiceover/c4use
execute as @a[scores={magmaspawnegg=1..}] unless items entity @s hotbar.* flint run give @s flint[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Detonate C4","italic":false,"color":"aqua"}]]
scoreboard players reset @a magmaspawnegg