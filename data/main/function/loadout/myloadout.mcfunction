execute as @s[scores={loadoutid=1}] run scoreboard players operation @s loadouttemppart1 = @s loadout1part1
execute as @s[scores={loadoutid=1}] run scoreboard players operation @s loadouttemppart2 = @s loadout1part2
execute as @s[scores={loadoutid=2}] run scoreboard players operation @s loadouttemppart1 = @s loadout2part1
execute as @s[scores={loadoutid=2}] run scoreboard players operation @s loadouttemppart2 = @s loadout2part2
execute as @s[scores={loadoutid=3}] run scoreboard players operation @s loadouttemppart1 = @s loadout3part1
execute as @s[scores={loadoutid=3}] run scoreboard players operation @s loadouttemppart2 = @s loadout3part2
execute as @s[scores={loadoutid=4}] run scoreboard players operation @s loadouttemppart1 = @s loadout4part1
execute as @s[scores={loadoutid=4}] run scoreboard players operation @s loadouttemppart2 = @s loadout4part2
execute as @s[scores={loadoutid=5}] run scoreboard players operation @s loadouttemppart1 = @s loadout5part1
execute as @s[scores={loadoutid=5}] run scoreboard players operation @s loadouttemppart2 = @s loadout5part2

scoreboard players operation @s classslot12 = @s loadouttemppart2
scoreboard players operation @s classslot12 %= 10 number
scoreboard players operation @s classslot11 = @s loadouttemppart2
scoreboard players operation @s classslot11 /= 10 number
scoreboard players operation @s classslot11 %= 10 number
scoreboard players operation @s classslot10 = @s loadouttemppart2
scoreboard players operation @s classslot10 /= 100 number
scoreboard players operation @s classslot10 %= 10 number
scoreboard players operation @s classslot9 = @s loadouttemppart2
scoreboard players operation @s classslot9 /= 1000 number

scoreboard players operation @s classslot8 = @s loadouttemppart1
scoreboard players operation @s classslot8 %= 10 number
scoreboard players operation @s classslot7 = @s loadouttemppart1
scoreboard players operation @s classslot7 /= 10 number
scoreboard players operation @s classslot7 %= 10 number
scoreboard players operation @s classslot6 = @s loadouttemppart1
scoreboard players operation @s classslot6 /= 100 number
scoreboard players operation @s classslot6 %= 10 number
scoreboard players operation @s classslot5 = @s loadouttemppart1
scoreboard players operation @s classslot5 /= 1000 number
scoreboard players operation @s classslot5 %= 10 number
scoreboard players operation @s classslot4 = @s loadouttemppart1
scoreboard players operation @s classslot4 /= 10000 number
scoreboard players operation @s classslot4 %= 10 number
scoreboard players operation @s classslot3 = @s loadouttemppart1
scoreboard players operation @s classslot3 /= 100000 number
scoreboard players operation @s classslot3 %= 10 number
scoreboard players operation @s classslot2 = @s loadouttemppart1
scoreboard players operation @s classslot2 /= 1000000 number
scoreboard players operation @s classslot2 %= 10 number
scoreboard players operation @s classslot1 = @s loadouttemppart1
scoreboard players operation @s classslot1 /= 10000000 number

tellraw @s [{"text":"Chosen Class: ","color":"yellow"},{"score":{"name": "@s","objective": "loadoutid"},"color":"green"}]

execute unless score @s classslot11 matches 7 if score @s classslot1 matches 1 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Iron Sword","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 2 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Stone Axe","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 3 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Golden Dagger","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 4 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Golden Axe","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 5 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Mace","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 6 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Iron Spear","color":"dark_red"}]
execute unless score @s classslot11 matches 7 if score @s classslot1 matches 7 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Iron Battle Axe","color":"dark_red"}]

execute if score @s classslot11 matches 7 if score @s classslot11variation matches 1 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Bow","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 2 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Crossbow","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 3 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Shield","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 4 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Firework Crossbow","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 5 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Fishing Rod","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 6 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Ballista Crossbow","color":"dark_red"}]
execute if score @s classslot11 matches 7 if score @s classslot11variation matches 7 run tellraw @s [{"text":"Primary Weapon: ","color":"green"},{"text":"Flamethrower","color":"dark_red"}]

execute unless score @s classslot11 matches 7 if score @s classslot4 matches 1 run tellraw @s [{"text":"Primary Enchantment: ","color":"aqua"},{"text":"Sharpness I","color":"yellow"}]
execute unless score @s classslot11 matches 7 if score @s classslot4 matches 2 run tellraw @s [{"text":"Primary Enchantment: ","color":"aqua"},{"text":"Fire Aspect I","color":"yellow"}]
execute unless score @s classslot11 matches 7 if score @s classslot4 matches 3 run tellraw @s [{"text":"Primary Enchantment: ","color":"aqua"},{"text":"Knockback II","color":"yellow"}]
execute unless score @s classslot11 matches 7 if score @s classslot4 matches 4 run tellraw @s [{"text":"Primary Enchantment: ","color":"aqua"},{"text":"Poison I","color":"yellow"}]
execute unless score @s classslot11 matches 7 if score @s classslot4 matches 5 run tellraw @s [{"text":"Primary Enchantment: ","color":"aqua"},{"text":"Ice Aspect I","color":"yellow"}]

execute unless score @s classslot10 matches 7 if score @s classslot2 matches 1 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Bow","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 2 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Crossbow","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 3 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Shield","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 4 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Firework Crossbow","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 5 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Fishing Rod","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 6 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Ballista Crossbow","color":"dark_red"}]
execute unless score @s classslot10 matches 7 if score @s classslot2 matches 7 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"Flamethrower","color":"dark_red"}]

execute if score @s classslot10 matches 7 run tellraw @s [{"text":"Secondary Weapon: ","color":"green"},{"text":"None [One Man Army]","color":"dark_red"}]

execute unless score @s classslot10 matches 7 if score @s classslot5 matches 1 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Power I","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 2 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Quick Charge I","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 3 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Knockback Resistance","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 4 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Multishot","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 5 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Punch II","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 6 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Flame I","color":"yellow"}]
execute unless score @s classslot10 matches 7 if score @s classslot5 matches 7 run tellraw @s [{"text":"Secondary Enchantment: ","color":"aqua"},{"text":"Glowing Thorns","color":"yellow"}]

execute if score @s classslot3 matches 1 run tellraw @s [{"text":"Armor: ","color":"blue"},{"text":"Iron","color":"gold"}]
execute if score @s classslot3 matches 2 run tellraw @s [{"text":"Armor: ","color":"blue"},{"text":"Netherite","color":"gold"}]
execute if score @s classslot3 matches 3 run tellraw @s [{"text":"Armor: ","color":"blue"},{"text":"Chainmail","color":"gold"}]

execute if score @s classslot7 matches 1 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Grenade Potion","color":"light_purple"}]
execute if score @s classslot7 matches 2 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Semtex Arrow","color":"light_purple"}]
execute if score @s classslot7 matches 3 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Creeper Claymore","color":"light_purple"}]
execute if score @s classslot7 matches 4 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Molotov Arrow","color":"light_purple"}]
execute if score @s classslot7 matches 5 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Tomahawk","color":"light_purple"}]
execute if score @s classslot7 matches 6 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"Drill Arrow","color":"light_purple"}]
execute if score @s classslot7 matches 7 run tellraw @s [{"text":"Lethal: ","color":"red"},{"text":"C4 Slime","color":"light_purple"}]

execute if score @s classslot8 matches 1 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Goat Horn","color":"light_purple"}]
execute if score @s classslot8 matches 2 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Flash Arrow","color":"light_purple"}]
execute if score @s classslot8 matches 3 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Snowball","color":"light_purple"}]
execute if score @s classslot8 matches 4 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Radar Arrow","color":"light_purple"}]
execute if score @s classslot8 matches 5 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Poison Potion","color":"light_purple"}]
execute if score @s classslot8 matches 6 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"Smoke Arrow","color":"light_purple"}]
execute if score @s classslot8 matches 7 run tellraw @s [{"text":"Tactical: ","color":"red"},{"text":"EMP Grenade","color":"light_purple"}]

execute if score @s classslot9 matches 1 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Cake","color":"gold"}]
execute if score @s classslot9 matches 2 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Loadout Drop","color":"gold"}]
execute if score @s classslot9 matches 3 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Frog Sentry","color":"gold"}]
execute if score @s classslot9 matches 4 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Portable UAV","color":"gold"}]
execute if score @s classslot9 matches 5 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Tactical Insertion","color":"gold"}]
execute if score @s classslot9 matches 6 run tellraw @s [{"text":"Field Upgrade: ","color":"dark_aqua"},{"text":"Binoculars","color":"gold"}]

execute if score @s classslot6 matches 1 run tellraw @s [{"text":"Food: ","color":"dark_green"},{"text":"Steak","color":"dark_aqua"}]
execute if score @s classslot6 matches 2 run tellraw @s [{"text":"Food: ","color":"dark_green"},{"text":"Cooked Mutton","color":"dark_aqua"}]
execute if score @s classslot6 matches 3 run tellraw @s [{"text":"Food: ","color":"dark_green"},{"text":"Golden Carrot","color":"dark_aqua"}]
execute if score @s classslot6 matches 4 run tellraw @s [{"text":"Food: ","color":"dark_green"},{"text":"Cookie","color":"dark_aqua"}]

execute if score @s classslot10 matches 1 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Marathon","color":"blue"}]
execute if score @s classslot10 matches 2 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Scavenger","color":"blue"}]
execute if score @s classslot10 matches 3 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Cold Blooded","color":"blue"}]
execute if score @s classslot10 matches 4 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Juiced Up","color":"blue"}]
execute if score @s classslot10 matches 5 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Resupply","color":"blue"}]
execute if score @s classslot10 matches 6 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"Sleight Of Hand","color":"blue"}]
execute if score @s classslot10 matches 7 run tellraw @s [{"text":"1ST PERK: ","color":"dark_blue"},{"text":"One Man Army","color":"blue"}]

execute if score @s classslot11 matches 1 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Lightweight","color":"red"}]
execute if score @s classslot11 matches 2 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Battleshield","color":"red"}]
execute if score @s classslot11 matches 3 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Berserk","color":"red"}]
execute if score @s classslot11 matches 4 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Stalker","color":"red"}]
execute if score @s classslot11 matches 5 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Hardline","color":"red"}]
execute if score @s classslot11 matches 6 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Engineer","color":"red"}]
execute if score @s classslot11 matches 7 run tellraw @s [{"text":"2ND PERK: ","color":"dark_red"},{"text":"Overkill","color":"red"}]

execute if score @s classslot12 matches 1 run tellraw @s [{"text":"Killstreaks: ","color":"aqua"},{"text":"Assault","color":"dark_red"}]
execute if score @s classslot12 matches 2 run tellraw @s [{"text":"Killstreaks: ","color":"aqua"},{"text":"Support","color":"dark_red"}]
execute if score @s classslot12 matches 3 run tellraw @s [{"text":"Killstreaks: ","color":"aqua"},{"text":"Specialist","color":"dark_red"}]

tag @s remove showmyloadout