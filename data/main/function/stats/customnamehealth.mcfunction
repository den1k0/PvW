execute store result score @s customhealth run data get entity @s Health 5
scoreboard players add @s customhealth 2
execute store result entity @s PortalCooldown int 1 run scoreboard players get @s customhealth
$data modify entity @s CustomName set value [{"text":"$(PortalCooldown)","color":"white"},{"text":" ❤","color":"red"}]