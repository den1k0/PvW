tellraw @s[tag=!hourbonusavailable] {"text":"You Have Not Received Your Hourly Gametime Bonus Yet!","color":"red"}

execute as @s[tag=hourbonusavailable] run tag @s add matchreward
execute as @s[tag=hourbonusavailable] run tag @s add matchrewardpls
execute as @s[tag=hourbonusavailable] run tellraw @s [{"text":"Hourly Gametime Bonus Successfully Used!","color":"green"}]
tag @s remove hourbonusavailable