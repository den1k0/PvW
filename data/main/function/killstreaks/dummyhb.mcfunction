scoreboard players add @s[tag=dummyhb] temp 1
execute as @s[tag=dummyhb,scores={temp=20}] run data modify entity @s Invisible set value 1b
execute as @s[tag=dummyhb,scores={temp=20}] run data modify entity @s Glowing set value 1b
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s weapon.mainhand with netherite_axe
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s weapon.offhand with totem_of_undying
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s armor.feet with leather_boots[dyed_color=4673362]
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s armor.legs with leather_leggings[dyed_color=3949738]
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s armor.chest with leather_chestplate[dyed_color=1481884]
execute as @s[tag=dummyhb,scores={temp=20}] run item replace entity @s armor.head with player_head[profile ={id:[I;-793684908,922371044,-1572341630,-1147149688],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThiN2NhM2M3ZDMxNGE2MWFiZWQ4ZmMxOGQ3OTdmYzMwYjZlZmM4NDQ1NDI1YzRlMjUwOTk3ZTUyZTZjYiJ9fX0="}]}]

execute at @s[tag=dummyhb,scores={temp=20}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.7 0
execute at @s[tag=dummyhb,scores={temp=20}] run particle poof ~ ~ ~ 1 1 1 0.1 60 normal
execute at @s[tag=dummyhb,scores={temp=40}] run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1 0
execute at @s[tag=dummyhb,scores={temp=40..}] run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~1 ~ 1.6 1.6 1.6 0 5 normal
execute at @s[tag=dummyhb,scores={temp=60}] run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 1.5 0.7 0
execute as @s[tag=dummyhb,scores={temp=60..}] at @s run tp @s ^ ^ ^0.3
execute as @s[tag=dummyhb,scores={temp=85}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=90}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=95}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=100}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=105}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=110}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=115}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=120}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=125}] run tag @s add plsstrike
execute as @s[tag=dummyhb,scores={temp=130}] run tag @s add plsstrike
execute at @s[tag=dummyhb,scores={temp=135}] run particle poof ~ ~ ~ 1.5 1.5 1.5 0 40 normal
execute at @s[tag=dummyhb,scores={temp=135}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~10 ~ 2 0.7 0
execute as @s[tag=dummyhb,scores={temp=135}] run kill @s