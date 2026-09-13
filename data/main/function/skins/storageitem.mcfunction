item replace entity @s enderchest.17 from entity @s player.cursor
execute at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1.5 0.7 0
scoreboard players set @s page -3
item replace entity @s player.cursor with air