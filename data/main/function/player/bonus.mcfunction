scoreboard players add @s[tag=!hourbonusavailable] bonus 2
execute if score @s[tag=!hourbonusavailable] bonus matches 72000.. run tellraw @s [{"text":"You Have Received Your Hourly Gametime Bonus! Type /bonus To Get It!","color":"green"}]
execute if score @s[tag=!hourbonusavailable] bonus matches 72000.. run playsound minecraft:block.note_block.bell master @s[tag=!hourbonusavailable] ~ ~ ~ 1 1 1
execute if score @s[tag=!hourbonusavailable] bonus matches 72000.. run tag @s add hourbonusavailable
execute as @s[tag=hourbonusavailable] run scoreboard players reset @s bonus