execute at @s as @e[type=item,distance=..100] at @s on origin run kill @n[type=item]
tag @s add loadout
scoreboard players reset @s hopperminecartuse
give @s hopper_minecart[minecraft:enchantment_glint_override=true,minecraft:custom_name={"text":"Hold RMB To Change Class","italic":false},item_model='onemanarmy',minecraft:dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},food={saturation:0,nutrition:0,can_always_eat:true},consumable={consume_seconds:7.5}]