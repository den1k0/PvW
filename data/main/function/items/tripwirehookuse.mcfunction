give @s minecraft:tripwire_hook[enchantment_glint_override=true,custom_name={"text":"Press RMB To Change Block"},minecraft:consumable={consume_seconds:0.05,sound:item.bundle.remove_one}]
execute at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 1 0
execute at @s run particle minecraft:composter ~ ~0.5 ~ 0.5 0.5 0.5 0 16 normal
execute at @s unless block ~ ~-0.75 ~ air run summon minecraft:arrow ~ ~ ~ {Silent:1b,Tags:["phbdar"]}
scoreboard players reset @s tripwirehookuse
