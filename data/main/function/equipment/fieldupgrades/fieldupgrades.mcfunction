execute as @a run function main:equipment/fieldupgrades/fieldupgrademechanic

execute as @e[tag=cakeblockpart] run function main:equipment/fieldupgrades/cakeblock

execute as @e[tag=loadoutdrop] run function main:equipment/fieldupgrades/loadoutdrop

execute as @e[tag=frog] run function main:equipment/fieldupgrades/frogsentry
execute as @e[tag=frogtarget] run function main:equipment/fieldupgrades/frogsentry
scoreboard players reset @a[scores={frogspawnegg=1..}] frogspawnegg

execute as @a[scores={piglinspawnegg=1..}] run tag @s remove hasfieldupgrade
execute as @e[tag=portableuav] run function main:equipment/fieldupgrades/portableuav
scoreboard players reset @a[scores={piglinspawnegg=1..}] piglinspawnegg

execute as @a[scores={echosharduse=1..}] at @s run summon minecraft:item_display ~ ~0.05 ~ {item:{id:"minecraft:echo_shard",count:1b},Tags:["insertion","insertioninit","insertionpart"]}
execute as @e[tag=insertionpart] run function main:equipment/fieldupgrades/insertion
scoreboard players reset @a[scores={echosharduse=1..}] echosharduse
