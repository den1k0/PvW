scoreboard players add @s temp 2
execute if score @s temp matches 400.. run tag @s add graffiticlear

execute at @s[tag=graffiticlear] run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 0.85 0
execute at @s[tag=graffiticlear] run particle poof ~ ~0.25 ~ 0.3 0.3 0.3 0.05 16 normal
kill @s[tag=graffiticlear]