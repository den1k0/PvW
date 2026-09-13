execute at @s run playsound minecraft:block.barrel.open master @s ~ ~ ~ 1 0.7 1
execute store result score @s random run random value 1..3
execute if score @s random matches 1 run item replace entity @s enderchest.26 with iron_chestplate[custom_name=["",{"text":"Iron Armor","italic":false,"color":"white"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]
execute if score @s random matches 2 run item replace entity @s enderchest.26 with netherite_chestplate[custom_name=["",{"text":"Netherite Armor","italic":false,"color":"dark_gray"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]
execute if score @s random matches 3 run item replace entity @s enderchest.26 with chainmail_chestplate[custom_name=["",{"text":"Chainmail Armor","italic":false,"color":"gray"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]

execute at @s run summon armor_stand ~ ~ ~ {Tags:["caseitemmodifier"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute at @s run item replace entity @n[tag=caseitemmodifier] weapon.mainhand from entity @s enderchest.26
execute at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim" set value {material:"minecraft:quartz",pattern:"minecraft:raiser"}
execute at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" | ","color":"white",italic:false}

execute store result score @s random run random value 1..56
execute if score @s random matches 1..8 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:quartz"
execute if score @s random matches 1..8 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Quartz","color":"gray",italic:false}
execute if score @s random matches 9..16 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:iron"
execute if score @s random matches 9..16 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Iron","color":"white",italic:false}
execute if score @s random matches 17..24 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:copper"
execute if score @s random matches 17..24 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Copper","color":"gold",italic:false}
execute if score @s random matches 25..32 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:gold"
execute if score @s random matches 25..32 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Gold","color":"yellow",italic:false}
execute if score @s random matches 33..40 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:netherite"
execute if score @s random matches 33..40 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Netherite","color":"dark_gray",italic:false}
execute if score @s random matches 41..48 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:lapis"
execute if score @s random matches 41..48 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Lapis","color":"blue",italic:false}
execute at @s if score @s random matches 1..48 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Basic","color":"gray","italic":false}]
execute at @s if score @s random matches 1..48 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {basic:1b}

execute if score @s random matches 49..50 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:redstone"
execute if score @s random matches 49..50 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Redstone","color":"dark_red",italic:false}
execute if score @s random matches 51..52 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:emerald"
execute if score @s random matches 51..52 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Emerald","color":"green",italic:false}
execute if score @s random matches 53..54 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:diamond"
execute if score @s random matches 53..54 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Diamond","color":"aqua",italic:false}
execute at @s if score @s random matches 49..54 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Unique","color":"gray","italic":false}]
execute at @s if score @s random matches 49..54 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {unique:1b}

execute if score @s random matches 55 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:amethyst"
execute if score @s random matches 55 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Amethyst","color":"dark_purple",italic:false}
execute if score @s random matches 56 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".material set value "minecraft:resin"
execute if score @s random matches 56 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":"Resin","color":"#FF4900",italic:false}
execute at @s if score @s random matches 55..56 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore" append value [{"text":"Rarity: ","color":"dark_gray","italic":false},{"text":"Exotic","color":"gray","italic":false}]
execute at @s if score @s random matches 55..56 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {exotic:1b}

execute store result score @s random run random value 1..69
execute if score @s random matches 1..10 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:raiser"
execute if score @s random matches 1..10 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Raiser Trim","color":"yellow",italic:false}
execute if score @s random matches 11..20 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:wayfinder"
execute if score @s random matches 11..20 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Wayfinder Trim","color":"yellow",italic:false}
execute if score @s random matches 21..30 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:shaper"
execute if score @s random matches 21..30 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Shaper Trim","color":"yellow",italic:false}
execute if score @s random matches 31..40 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:host"
execute if score @s random matches 31..40 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Host Trim","color":"yellow",italic:false}
execute at @s if score @s random matches 1..40 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore"[0].extra append value {"text":" Common","color":"gray","italic":false}
execute at @s if score @s random matches 1..40 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {common:1b}

execute if score @s random matches 41..45 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:vex"
execute if score @s random matches 41..45 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Vex Trim","color":"aqua",italic:false}
execute if score @s random matches 46..50 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:sentry"
execute if score @s random matches 46..50 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Sentry Trim","color":"aqua",italic:false}
execute if score @s random matches 51..55 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:ward"
execute if score @s random matches 51..55 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Ward Trim","color":"aqua",italic:false}
execute if score @s random matches 56..60 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:rib"
execute if score @s random matches 56..60 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Rib Trim","color":"aqua",italic:false}
execute at @s if score @s random matches 41..60 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore"[0].extra append value {"text":" Rare","color":"gray","italic":false}
execute at @s if score @s random matches 41..60 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {rare:1b}

execute if score @s random matches 61..62 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:dune"
execute if score @s random matches 61..62 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Dune Trim","color":"gold",italic:false}
execute if score @s random matches 63..64 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:spire"
execute if score @s random matches 63..64 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Spire Trim","color":"gold",italic:false}
execute if score @s random matches 65..66 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:flow"
execute if score @s random matches 65..66 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Flow Trim","color":"gold",italic:false}
execute if score @s random matches 67..68 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:eye"
execute if score @s random matches 67..68 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Eye Trim","color":"gold",italic:false}
execute at @s if score @s random matches 61..68 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore"[0].extra append value {"text":" Epic","color":"gray","italic":false}
execute at @s if score @s random matches 61..68 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {epic:1b}

execute if score @s random matches 69 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:trim".pattern set value "minecraft:silence"
execute if score @s random matches 69 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_name".extra append value {"text":" Silence Trim","color":"dark_purple",italic:false}
execute at @s if score @s random matches 69 run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:lore"[0].extra append value {"text":" Legendary","color":"gray","italic":false}
execute at @s if score @s random matches 69 at @s run data modify entity @n[tag=caseitemmodifier] equipment.mainhand.components."minecraft:custom_data" merge value {legendary:1b}

execute at @s run item replace entity @s enderchest.26 from entity @n[tag=caseitemmodifier] weapon.mainhand
execute at @s run function main:inventory/itemtostorage

kill @n[tag=caseitemmodifier]