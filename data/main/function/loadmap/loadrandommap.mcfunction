execute store result score @s random run random value 1..19
execute if score @s random matches 1 run scoreboard players display numberformat @s mapname fixed {"text":"Village","color":"green"}
execute if score @s random matches 2 run scoreboard players display numberformat @s mapname fixed {"text":"Hot Tubs","color":"green"}
execute if score @s random matches 3 run scoreboard players display numberformat @s mapname fixed {"text":"Invasion","color":"green"}
execute if score @s random matches 4 run scoreboard players display numberformat @s mapname fixed {"text":"Tower","color":"green"}
execute if score @s random matches 5 run scoreboard players display numberformat @s mapname fixed {"text":"Control","color":"green"}
execute if score @s random matches 6 run scoreboard players display numberformat @s mapname fixed {"text":"Bridge","color":"green"}
execute if score @s random matches 7 run scoreboard players display numberformat @s mapname fixed {"text":"Terminal","color":"green"}
execute if score @s random matches 8 run scoreboard players display numberformat @s mapname fixed {"text":"Crash","color":"green"}
execute if score @s random matches 9 run scoreboard players display numberformat @s mapname fixed {"text":"Derail","color":"green"}
execute if score @s random matches 10 run scoreboard players display numberformat @s mapname fixed {"text":"Bazaar","color":"green"}
execute if score @s random matches 11 run scoreboard players display numberformat @s mapname fixed {"text":"Rocket","color":"green"}
execute if score @s random matches 12 run scoreboard players display numberformat @s mapname fixed {"text":"End Shipment","color":"green"}
execute if score @s random matches 13 run scoreboard players display numberformat @s mapname fixed {"text":"Mansion","color":"green"}
execute if score @s random matches 14 run scoreboard players display numberformat @s mapname fixed {"text":"Vokzal","color":"green"}
execute if score @s random matches 15 run scoreboard players display numberformat @s mapname fixed {"text":"Island","color":"green"}
execute if score @s random matches 16 run scoreboard players display numberformat @s mapname fixed {"text":"Prison","color":"green"}
execute if score @s random matches 17 run scoreboard players display numberformat @s mapname fixed {"text":"Karachi","color":"green"}
execute if score @s random matches 18 run scoreboard players display numberformat @s mapname fixed {"text":"Nightshift","color":"green"}
execute if score @s random matches 19 run scoreboard players display numberformat @s mapname fixed {"text":"Cache","color":"green"}
execute as @s run function main:mplobby/updatemap
tag @s remove loadrandommap