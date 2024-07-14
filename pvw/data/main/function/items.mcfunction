execute as @a[scores={shieldbash=20..}] run clear @s minecraft:shield 1
execute as @a[scores={shieldbash=20..}] run scoreboard players add @s shieldtemp 1
execute as @a[scores={shieldbash=20..}] at @s on attacker unless data entity @s SelectedItem{id:"minecraft:golden_axe"} unless data entity @s SelectedItem{id:"minecraft:iron_axe"} run scoreboard players add @p[gamemode=!spectator] shieldtemp 30
execute as @a[scores={shieldbash=1..}] run scoreboard players reset @s shieldbash
execute as @a[scores={shieldtemp=1..}] run scoreboard players add @s shieldtemp 1
execute as @a[scores={shieldtemp=100..}] if items entity @s weapon.offhand * run give @s minecraft:shield[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Iron Sword +SH","italic":false}']
execute as @a[scores={shieldtemp=100..}] unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand with minecraft:shield[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Iron Sword +SH","italic":false}']
execute as @a[scores={shieldtemp=100..}] at @s run playsound minecraft:music_disc.warsoundfour neutral @s ~ ~ ~ 0.5 0.6 0.5
execute as @a[scores={shieldtemp=100..}] run scoreboard players reset @s shieldtemp

execute as @a[scores={damagetaken=6..}] at @s on attacker if score @s damagedealt matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data"{poison:1b} run effect give @p[gamemode=!spectator] minecraft:poison 2 1 false

item replace entity @a[tag=removehead] armor.head with air
item replace entity @a[team=piglin,tag=!emote,tag=!removehead] armor.head with minecraft:piglin_head[custom_data={dontclear:1b}]
item replace entity @a[team=wither,tag=!emote,tag=!removehead] armor.head with minecraft:wither_skeleton_skull[custom_data={dontclear:1b}]
tag @a[tag=removehead] remove removehead

scoreboard players reset @a[] bowuse
scoreboard players reset @a[] crossbowuse