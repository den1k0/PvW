scoreboard players operation @s item = @s itemtemp
execute store result score @s random run random value 1..4
execute if score @s random matches 1 at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 0.5 1.2 0
execute if score @s random matches 2 at @s run playsound minecraft:item.bundle.insert master @a ~ ~ ~ 0.5 1.2 0
execute if score @s random matches 3 at @s run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 0.5 2 0
execute if score @s random matches 4 at @s run playsound minecraft:item.armor.equip_wolf master @a ~ ~ ~ 0.5 1.5 0
execute if items entity @s weapon.mainhand *[minecraft:tool] at @s run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 0.5 1.2 0
execute if items entity @s weapon.mainhand potion at @s run playsound item.bottle.empty master @s ~ ~ ~ 0.5 1.2 0
execute if items entity @s weapon.mainhand lingering_potion at @s run playsound item.bottle.empty master @s ~ ~ ~ 0.5 1.2 0
execute if items entity @s weapon.mainhand splash_potion at @s run playsound item.bottle.empty master @s ~ ~ ~ 0.5 1.2 0
execute if items entity @s weapon.mainhand bow at @s run playsound item.crossbow.loading_start master @a ~ ~ ~ 1 1.35 0
execute if items entity @s weapon.mainhand crossbow at @s run playsound item.crossbow.loading_start master @a ~ ~ ~ 1 1.35 0