execute as @a[scores={goathornuse=1..}] run function main:equipment/tacticals/goathorn

execute as @e[type=minecraft:arrow,tag=!smoked,nbt={item:{components:{"minecraft:potion_contents":{custom_color:1646884}}},inGround:1b}] run function main:equipment/tacticals/smokearrow
execute as @e[tag=smoked] run function main:equipment/tacticals/smokearrow

execute as @e[type=minecraft:snowball] run function main:equipment/tacticals/snowball
execute as @e[tag=snowball] run function main:equipment/tacticals/snowball

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:15988471}}},inGround:1b}] run function main:equipment/tacticals/flasharrow

execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:14929226}}},inGround:1b},tag=!radared] run function main:equipment/tacticals/radararrow
execute as @e[tag=radared] run function main:equipment/tacticals/radararrow

execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:2981413}}] run function main:equipment/tacticals/poisonpotion
execute as @e[tag=poisoned] run function main:equipment/tacticals/poisonpotion

execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:1640557}}] run function main:equipment/tacticals/empgrenade