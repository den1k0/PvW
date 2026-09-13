execute at @s run playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1 0
give @s minecraft:note_block[enchantment_glint_override=true,custom_name={"text":"Press RMB To Whistle"},minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'}]
scoreboard players reset @s noteblockuse