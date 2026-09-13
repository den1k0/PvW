execute at @s run summon marker ~ ~ ~ {Tags:["clearfire"]}
scoreboard players add @s temp 1
kill @s[scores={temp=6..}]