execute store result score @s random run random value 2..4

execute if score @s random matches 2 run item replace entity @s enderchest.8 with dragon_breath[custom_name={"text":"Double Player Kill XP","italic":false,"color":"yellow"},enchantment_glint_override=true,lore=[["",{"text":"Use This Item To Get Double Player Kill XP For 3 Matches (Stacks Up)","italic":false,"color":"gold"}]],custom_data={doublexp:1b}]
execute if score @s random matches 2 run tag @s add itemtoinventory
execute if score @s random matches 2 run tellraw @s [{"text":"Reward: ","color": "yellow"},{"text":"Double Player Kill XP","color": "yellow"}]
execute if score @s random matches 2 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.5 

execute if score @s random matches 3 run tellraw @s [{"text":"Reward: ","color": "yellow"},{"text":"Netherite x1","color": "green"}]
execute if score @s random matches 3 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.5
execute if score @s random matches 3 run scoreboard players add @s netherite 1

execute if score @s random matches 4 run tellraw @s [{"text":"Reward: ","color": "yellow"},{"text":"Challenge Bottle","color": "dark_purple"}]
execute if score @s random matches 4 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.5
execute if score @s random matches 4 run item replace entity @s enderchest.8 with ominous_bottle[minecraft:custom_name={"text":"Challenge Bottle","italic":false},minecraft:enchantment_glint_override=true,!minecraft:ominous_bottle_amplifier,lore=[[{"text":"Win Your Next Match","italic":false}],[{"text":"Use This Item To Activate The Challenge","color":"gold","italic":false}],[{"text":"Reward: 50 XP","italic":false,"color":"green"}]],custom_data={challengebottlewinmatchxp:1b}]
execute if score @s random matches 4 run tag @s add itemtoinventory