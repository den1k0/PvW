clear @a[tag=loadout]

execute as @a[tag=loadout,scores={loadoutid=1}] run scoreboard players operation @s loadouttemppart1 = @s loadout1part1
execute as @a[tag=loadout,scores={loadoutid=1}] run scoreboard players operation @s loadouttemppart2 = @s loadout1part2
execute as @a[tag=loadout,scores={loadoutid=2}] run scoreboard players operation @s loadouttemppart1 = @s loadout2part1
execute as @a[tag=loadout,scores={loadoutid=2}] run scoreboard players operation @s loadouttemppart2 = @s loadout2part2
execute as @a[tag=loadout,scores={loadoutid=3}] run scoreboard players operation @s loadouttemppart1 = @s loadout3part1
execute as @a[tag=loadout,scores={loadoutid=3}] run scoreboard players operation @s loadouttemppart2 = @s loadout3part2
execute as @a[tag=loadout,scores={loadoutid=4}] run scoreboard players operation @s loadouttemppart1 = @s loadout4part1
execute as @a[tag=loadout,scores={loadoutid=4}] run scoreboard players operation @s loadouttemppart2 = @s loadout4part2

execute as @a[tag=loadout] run scoreboard players operation @s classslot12 = @s loadouttemppart2
execute as @a[tag=loadout] run scoreboard players operation @s classslot12 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot11 = @s loadouttemppart2
execute as @a[tag=loadout] run scoreboard players operation @s classslot11 /= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot11 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot10 = @s loadouttemppart2
execute as @a[tag=loadout] run scoreboard players operation @s classslot10 /= 100 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot10 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot9 = @s loadouttemppart2
execute as @a[tag=loadout] run scoreboard players operation @s classslot9 /= 1000 number

execute as @a[tag=loadout] run scoreboard players operation @s classslot8 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot8 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot7 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot7 /= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot7 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot6 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot6 /= 100 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot6 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot5 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot5 /= 1000 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot5 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot4 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot4 /= 10000 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot4 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot3 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot3 /= 100000 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot3 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot2 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot2 /= 1000000 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot2 %= 10 number
execute as @a[tag=loadout] run scoreboard players operation @s classslot1 = @s loadouttemppart1
execute as @a[tag=loadout] run scoreboard players operation @s classslot1 /= 10000000 number

execute as @a[tag=loadout,scores={classslot1=1,classslot4=1}] run item replace entity @s hotbar.0 with iron_sword[minecraft:unbreakable={},minecraft:enchantments={sharpness:1},minecraft:custom_name='{"text":"Iron Sword +SH","italic":false}']
execute as @a[tag=loadout,scores={classslot1=1,classslot4=2}] run item replace entity @s hotbar.0 with iron_sword[minecraft:unbreakable={},minecraft:enchantments={fire_aspect:1},minecraft:custom_name='{"text":"Iron Sword +FA","italic":false}']
execute as @a[tag=loadout,scores={classslot1=1,classslot4=3}] run item replace entity @s hotbar.0 with iron_sword[minecraft:unbreakable={},minecraft:enchantments={knockback:2},minecraft:custom_name='{"text":"Iron Sword +KB","italic":false}']
execute as @a[tag=loadout,scores={classslot1=1,classslot4=4}] run item replace entity @s hotbar.0 with iron_sword[minecraft:unbreakable={},minecraft:enchantments={sharpness:0},minecraft:custom_name='{"text":"Iron Sword +PO","italic":false}',minecraft:custom_data={poison:1b},lore=['["",{"text":"Poison I","italic":false,"color":"gray"}]']]
execute as @a[tag=loadout,scores={classslot1=2,classslot4=1}] run item replace entity @s hotbar.0 with stone_axe[minecraft:unbreakable={},minecraft:enchantments={sharpness:1},minecraft:custom_name='{"text":"Stone Axe +SH","italic":false}']
execute as @a[tag=loadout,scores={classslot1=2,classslot4=2}] run item replace entity @s hotbar.0 with stone_axe[minecraft:unbreakable={},minecraft:enchantments={fire_aspect:1},minecraft:custom_name='{"text":"Stone Axe +FA","italic":false}']
execute as @a[tag=loadout,scores={classslot1=2,classslot4=3}] run item replace entity @s hotbar.0 with stone_axe[minecraft:unbreakable={},minecraft:enchantments={knockback:2},minecraft:custom_name='{"text":"Stone Axe +KB","italic":false}']
execute as @a[tag=loadout,scores={classslot1=2,classslot4=4}] run item replace entity @s hotbar.0 with stone_axe[minecraft:unbreakable={},minecraft:enchantments={sharpness:0},minecraft:custom_name='{"text":"Stone Axe +PO","italic":false}',minecraft:custom_data={poison:1b},lore=['["",{"text":"Poison I","italic":false,"color":"gray"}]']]
execute as @a[tag=loadout,scores={classslot1=3,classslot4=1}] run item replace entity @s hotbar.0 with golden_sword[minecraft:unbreakable={},minecraft:enchantments={sharpness:1},minecraft:custom_name='{"text":"Golden Sword +SH","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:4,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-2,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=3,classslot4=2}] run item replace entity @s hotbar.0 with golden_sword[minecraft:unbreakable={},minecraft:enchantments={fire_aspect:1},minecraft:custom_name='{"text":"Golden Sword +FA","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:4,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-2,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=3,classslot4=3}] run item replace entity @s hotbar.0 with golden_sword[minecraft:unbreakable={},minecraft:enchantments={knockback:2},minecraft:custom_name='{"text":"Golden Sword +KB","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:4,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-2,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=3,classslot4=4}] run item replace entity @s hotbar.0 with golden_sword[minecraft:unbreakable={},minecraft:enchantments={sharpness:0},minecraft:custom_name='{"text":"Golden Sword +PO","italic":false}',minecraft:custom_data={poison:1b},lore=['["",{"text":"Poison I","italic":false,"color":"gray"}]'],attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:4,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-2,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=4,classslot4=1}] run item replace entity @s hotbar.0 with golden_axe[minecraft:unbreakable={},minecraft:enchantments={sharpness:1},minecraft:custom_name='{"text":"Golden Axe +SH","italic":false}']
execute as @a[tag=loadout,scores={classslot1=4,classslot4=2}] run item replace entity @s hotbar.0 with golden_axe[minecraft:unbreakable={},minecraft:enchantments={fire_aspect:1},minecraft:custom_name='{"text":"Golden Axe +FA","italic":false}']
execute as @a[tag=loadout,scores={classslot1=4,classslot4=3}] run item replace entity @s hotbar.0 with golden_axe[minecraft:unbreakable={},minecraft:enchantments={knockback:2},minecraft:custom_name='{"text":"Golden Axe +KB","italic":false}']
execute as @a[tag=loadout,scores={classslot1=4,classslot4=4}] run item replace entity @s hotbar.0 with golden_axe[minecraft:unbreakable={},minecraft:enchantments={sharpness:0},minecraft:custom_name='{"text":"Golden Axe +PO","italic":false}',minecraft:custom_data={poison:1b},lore=['["",{"text":"Poison I","italic":false,"color":"gray"}]']]
execute as @a[tag=loadout,scores={classslot1=5,classslot4=1}] run item replace entity @s hotbar.0 with mace[minecraft:unbreakable={},minecraft:enchantments={sharpness:1},minecraft:custom_name='{"text":"Mace +SH","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:9,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-3.4,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=5,classslot4=2}] run item replace entity @s hotbar.0 with mace[minecraft:unbreakable={},minecraft:enchantments={fire_aspect:1},minecraft:custom_name='{"text":"Mace +FA","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:9,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-3.4,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=5,classslot4=3}] run item replace entity @s hotbar.0 with mace[minecraft:unbreakable={},minecraft:enchantments={knockback:2},minecraft:custom_name='{"text":"Mace +KB","italic":false}',attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:9,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-3.4,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot1=5,classslot4=4}] run item replace entity @s hotbar.0 with mace[minecraft:unbreakable={},minecraft:enchantments={sharpness:0},minecraft:custom_name='{"text":"Mace +PO","italic":false}',minecraft:custom_data={poison:1b},lore=['["",{"text":"Poison I","italic":false,"color":"gray"}]'],attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:9,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-3.4,id:"generic.attack_speed",operation:add_value}]}]

execute as @a[tag=loadout,scores={classslot2=1,classslot5=1}] run item replace entity @s hotbar.1 with bow[minecraft:unbreakable={},minecraft:enchantments={power:1},minecraft:custom_name='{"text":"Bow +PW","italic":false}']
execute as @a[tag=loadout,scores={classslot2=1,classslot5=3}] run item replace entity @s hotbar.1 with bow[minecraft:unbreakable={},minecraft:enchantments={flame:1},minecraft:custom_name='{"text":"Bow +FL","italic":false}']
execute as @a[tag=loadout,scores={classslot2=2,classslot5=2}] run item replace entity @s hotbar.1 with crossbow[minecraft:unbreakable={},minecraft:enchantments={quick_charge:1},minecraft:custom_name='{"text":"Crossbow +QU","italic":false}']
execute as @a[tag=loadout,scores={classslot2=2,classslot5=4}] run item replace entity @s hotbar.1 with crossbow[minecraft:unbreakable={},minecraft:enchantments={multishot:1},minecraft:custom_name='{"text":"Crossbow +MS","italic":false}']
execute as @a[tag=loadout,scores={classslot2=3}] run item replace entity @s weapon.offhand with shield[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Shield","italic":false}']
execute as @a[tag=loadout,scores={classslot2=4,classslot5=2}] run item replace entity @s hotbar.1 with crossbow[minecraft:unbreakable={},minecraft:enchantments={quick_charge:1},minecraft:custom_name='{"text":"Firework Crossbow +QU","italic":false}']
execute as @a[tag=loadout,scores={classslot2=4,classslot5=4}] run item replace entity @s hotbar.1 with crossbow[minecraft:unbreakable={},minecraft:enchantments={multishot:1},minecraft:custom_name='{"text":"Firework Crossbow +MS","italic":false}']

execute as @a[tag=loadout,scores={classslot3=1}] run item replace entity @s armor.chest with iron_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Iron Chestplate","italic":false}']
execute as @a[tag=loadout,scores={classslot3=1}] run item replace entity @s armor.legs with iron_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Iron Leggings","italic":false}']
execute as @a[tag=loadout,scores={classslot3=1}] run item replace entity @s armor.feet with iron_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Iron Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=2}] run item replace entity @s armor.chest with netherite_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Netherite Chestplate","italic":false}',attribute_modifiers={modifiers:[{type:"generic.movement_speed",amount:-0.02,slot:chest,id:"generic.movement_speed",operation:add_value},{type:"generic.armor",amount:8,slot:chest,id:"generic.armor",operation:add_value},{type:"generic.armor_toughness",amount:3,slot:chest,id:"generic.armor_toughness",operation:add_value},{type:"generic.knockback_resistance",amount:0.1,slot:chest,id:"generic.knockback_resistance",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot3=2}] run item replace entity @s armor.legs with golden_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Golden Leggings","italic":false}']
execute as @a[tag=loadout,scores={classslot3=2}] run item replace entity @s armor.feet with netherite_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Netherite Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=3}] run item replace entity @s armor.chest with chainmail_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,projectile_protection:5},minecraft:custom_name='{"text":"Chainmail Chestplate","italic":false}',attribute_modifiers={modifiers:[{type:"generic.movement_speed",amount:0.01,slot:chest,id:"generic.movement_speed",operation:add_value},{type:"generic.armor",amount:5,slot:chest,id:"generic.armor",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot3=3}] run item replace entity @s armor.legs with chainmail_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Chainmail Leggings","italic":false}']
execute as @a[tag=loadout,scores={classslot3=3}] run item replace entity @s armor.feet with chainmail_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3},minecraft:custom_name='{"text":"Chainmail Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=1,classslot11=1}] run item replace entity @s armor.feet with iron_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,feather_falling:4},minecraft:custom_name='{"text":"Iron Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=2,classslot11=1}] run item replace entity @s armor.feet with netherite_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,feather_falling:4},minecraft:custom_name='{"text":"Netherite Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=3,classslot11=1}] run item replace entity @s armor.feet with chainmail_boots[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,feather_falling:4},minecraft:custom_name='{"text":"Chainmail Boots","italic":false}']
execute as @a[tag=loadout,scores={classslot3=1,classslot11=2}] run item replace entity @s armor.chest with iron_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,blast_protection:3},minecraft:custom_name='{"text":"Iron Chestplate","italic":false}']
execute as @a[tag=loadout,scores={classslot3=2,classslot11=2}] run item replace entity @s armor.chest with netherite_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,blast_protection:3},minecraft:custom_name='{"text":"Netherite Chestplate","italic":false}',attribute_modifiers={modifiers:[{type:"generic.movement_speed",amount:-0.02,slot:chest,id:"generic.movement_speed",operation:add_value},{type:"generic.armor",amount:8,slot:chest,id:"generic.armor",operation:add_value},{type:"generic.armor_toughness",amount:3,slot:chest,id:"generic.armor_toughness",operation:add_value},{type:"generic.knockback_resistance",amount:0.1,slot:chest,id:"generic.knockback_resistance",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot3=3,classslot11=2}] run item replace entity @s armor.chest with chainmail_chestplate[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,projectile_protection:5,blast_protection:3},minecraft:custom_name='{"text":"Chainmail Chestplate","italic":false}',attribute_modifiers={modifiers:[{type:"generic.movement_speed",amount:0.01,slot:chest,id:"generic.movement_speed",operation:add_value},{type:"generic.armor",amount:5,slot:chest,id:"generic.armor",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot3=1,classslot11=4}] run item replace entity @s armor.legs with iron_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,swift_sneak:3},minecraft:custom_name='{"text":"Iron Leggings","italic":false}']
execute as @a[tag=loadout,scores={classslot3=2,classslot11=4}] run item replace entity @s armor.legs with golden_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,swift_sneak:3},minecraft:custom_name='{"text":"Golden Leggings","italic":false}']
execute as @a[tag=loadout,scores={classslot3=3,classslot11=4}] run item replace entity @s armor.legs with chainmail_leggings[minecraft:unbreakable={},minecraft:enchantments={unbreaking:3,swift_sneak:3},minecraft:custom_name='{"text":"Chainmail Leggings","italic":false}']

execute as @a[tag=loadout,scores={classslot7=1}] run item replace entity @s hotbar.3 with lingering_potion[potion_contents={custom_color:11161680,custom_effects:[{id:instant_damage,duration:1,amplifier:1}]},custom_name='["",{"text":"Grenade Potion","italic":false}]']
execute as @a[tag=loadout,scores={classslot7=2}] run item replace entity @s hotbar.3 with tipped_arrow[potion_contents={custom_color:4281871,custom_effects:[{id:weakness,duration:80,amplifier:0}]},custom_name='["",{"text":"Explosive Arrow","italic":false}]'] 2
execute as @a[tag=loadout,scores={classslot7=3},team=piglin] run item replace entity @s hotbar.3 with creeper_spawn_egg[can_place_on={predicates:[{blocks:"#mineable/pickaxe"},{blocks:"#mineable/axe"},{blocks:"#mineable/shovel"},{blocks:"#mineable/hoe"},{blocks:"#ice"}],show_in_tooltip:false},entity_data={id:"minecraft:creeper",NoAI:1b,Health:16f,ExplosionRadius:3b,Fuse:40,Tags:["creeper","creeperpiglin"],CustomName:'{"italic":false,"text":"Creeper Claymore"}'},minecraft:custom_name='{"text":"Creeper Claymore","italic":false}'] 1
execute as @a[tag=loadout,scores={classslot7=3},team=wither] run item replace entity @s hotbar.3 with creeper_spawn_egg[can_place_on={predicates:[{blocks:"#mineable/pickaxe"},{blocks:"#mineable/axe"},{blocks:"#mineable/shovel"},{blocks:"#mineable/hoe"},{blocks:"#ice"}],show_in_tooltip:false},entity_data={id:"minecraft:creeper",NoAI:1b,Health:16f,ExplosionRadius:3b,Fuse:40,Tags:["creeper","creeperwither"],CustomName:'{"italic":false,"text":"Creeper Claymore"}'},minecraft:custom_name='{"text":"Creeper Claymore","italic":false}'] 1
execute as @a[tag=loadout,scores={classslot7=4}] run item replace entity @s hotbar.3 with tipped_arrow[potion_contents={custom_color:7083032,custom_effects:[{id:wither,duration:160,amplifier:0}]},custom_name='["",{"text":"Molotov Arrow","italic":false}]'] 2
execute as @a[tag=loadout,scores={classslot7=5}] run item replace entity @s hotbar.3 with trident[damage=248,custom_name='["",{"text":"Tomahawk","italic":false}]',minecraft:enchantments={sharpness:17},attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:-100,id:"generic.attack_damage",operation:add_value},{type:"generic.attack_speed",amount:-100,id:"generic.attack_speed",operation:add_value}]}]
execute as @a[tag=loadout,scores={classslot7=6}] run item replace entity @s hotbar.3 with tipped_arrow[potion_contents={custom_color:3684408,custom_effects:[{id:weakness,duration:80,amplifier:0}]},custom_name='["",{"text":"Drill Arrow","italic":false}]'] 2

execute as @a[tag=loadout,scores={classslot8=1}] run item replace entity @s hotbar.4 with goat_horn[max_stack_size=6] 3
execute as @a[tag=loadout,scores={classslot8=2}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:15988471,custom_effects:[{id:blindness,duration:80,amplifier:0}]},custom_name='["",{"text":"Flash Arrow","italic":false}]'] 2
execute as @a[tag=loadout,scores={classslot8=3}] run item replace entity @s hotbar.4 with snowball[minecraft:enchantments={unbreaking:3}] 4
execute as @a[tag=loadout,scores={classslot8=4}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:14929226,custom_effects:[{id:glowing,duration:160,amplifier:0}]},custom_name='["",{"text":"Radar Arrow","italic":false}]'] 2
execute as @a[tag=loadout,scores={classslot8=5}] run item replace entity @s hotbar.4 with lingering_potion[potion_contents={custom_color:2981413,custom_effects:[{id:poison,duration:120,amplifier:1}]},custom_name='["",{"text":"Poison Potion","italic":false}]',max_stack_size=4] 2
execute as @a[tag=loadout,scores={classslot8=6}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:1646884,custom_effects:[{id:slowness,duration:80,amplifier:1}]},custom_name='["",{"text":"Smoke Arrow","italic":false}]'] 2
execute as @a[tag=loadout,scores={classslot8=1,classslot10=5}] run item replace entity @s hotbar.4 with goat_horn[max_stack_size=6] 6
execute as @a[tag=loadout,scores={classslot8=2,classslot10=5}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:15988471,custom_effects:[{id:blindness,duration:80,amplifier:0}]},custom_name='["",{"text":"Flash Arrow","italic":false}]'] 4
execute as @a[tag=loadout,scores={classslot8=3,classslot10=5}] run item replace entity @s hotbar.4 with snowball[minecraft:enchantments={unbreaking:3}] 8
execute as @a[tag=loadout,scores={classslot8=4,classslot10=5}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:14929226,custom_effects:[{id:glowing,duration:160,amplifier:0}]},custom_name='["",{"text":"Radar Arrow","italic":false}]'] 4
execute as @a[tag=loadout,scores={classslot8=5,classslot10=5}] run item replace entity @s hotbar.4 with lingering_potion[potion_contents={custom_color:2981413,custom_effects:[{id:poison,duration:120,amplifier:1}]},custom_name='["",{"text":"Poison Potion","italic":false}]',max_stack_size=4] 4
execute as @a[tag=loadout,scores={classslot8=6,classslot10=5}] run item replace entity @s hotbar.4 with tipped_arrow[potion_contents={custom_color:1646884,custom_effects:[{id:slowness,duration:80,amplifier:1}]},custom_name='["",{"text":"Smoke Arrow","italic":false}]'] 4

execute as @a[tag=loadout,scores={classslot10=4}] run effect give @s speed 4 2 true

execute as @a[tag=loadout,scores={classslot2=1..2}] run item replace entity @s weapon.offhand with arrow 24
execute as @a[tag=loadout,scores={classslot2=1..2,classslot10=2}] run item replace entity @s weapon.offhand with arrow 48
execute as @a[tag=loadout,scores={classslot2=4}] run item replace entity @s weapon.offhand with firework_rocket[fireworks={flight_duration:1,explosions:[{shape:"burst",has_trail:true,colors:[I;12725261],fade_colors:[I;4539717]},{shape:"burst",has_trail:true,colors:[I;14709769],fade_colors:[I;3026478]}]}] 24

execute as @a[tag=loadout,scores={classslot6=1}] run item replace entity @s hotbar.2 with cooked_beef 14
execute as @a[tag=loadout,scores={classslot6=2}] run item replace entity @s hotbar.2 with cooked_mutton 18
execute as @a[tag=loadout,scores={classslot6=3}] run item replace entity @s hotbar.2 with golden_carrot 10

tag @a[tag=loadout] remove loadout
