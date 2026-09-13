scoreboard players add @s[scores={shieldtemp=1..}] shieldtemp 1
execute if items entity @s[scores={shieldtemp=100..}] weapon.offhand * run give @s minecraft:shield[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name={"text":"Shield","italic":false}]
execute unless items entity @s[scores={shieldtemp=100..}] weapon.offhand * run item replace entity @s weapon.offhand with minecraft:shield[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name={"text":"Shield","italic":false}]
execute at @s[scores={shieldtemp=100..}] run playsound minecraft:music_disc.warsoundfour neutral @s ~ ~ ~ 0.5 0.6 0.5
scoreboard players reset @s[scores={shieldtemp=100..}] shieldtemp