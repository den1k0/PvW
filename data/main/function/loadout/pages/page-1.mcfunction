execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.9 with wooden_sword[custom_name=["",{"text":"Change Class 1","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.11 with stone_sword[custom_name=["",{"text":"Change Class 2","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.13 with iron_sword[custom_name=["",{"text":"Change Class 3","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true,custom_data={notitem:1b}]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.15 with diamond_sword[custom_name=["",{"text":"Change Class 4","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true]
execute as @s unless score @s allowedclasses matches 4.. at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.15 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED]","italic":false,"underlined":true,"color":"red"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.17 with netherite_sword[custom_name=["",{"text":"Change Class 5","italic":false,"underlined":true,"color":"aqua"}],enchantment_glint_override=true]
execute as @s unless score @s allowedclasses matches 5.. at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.17 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED]","italic":false,"underlined":true,"color":"red"}],enchantment_glint_override=true]

execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.0 with breeze_rod[custom_name=["",{"text":"Choose This As Current Class","italic":false}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=16711680,item_model=arrow_down,custom_data={loadout1:1b}]
execute as @s[scores={loadoutid=1}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.0 with lime_stained_glass_pane[custom_name=["",{"text":"Chosen As Current Class","italic":false,"color":"green"}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=65280,item_model=arrow_down]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.2 with breeze_rod[custom_name=["",{"text":"Choose This As Current Class","italic":false}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=16711680,item_model=arrow_down,custom_data={loadout2:1b}]
execute as @s[scores={loadoutid=2}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.2 with lime_stained_glass_pane[custom_name=["",{"text":"Chosen As Current Class","italic":false,"color":"green"}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=65280,item_model=arrow_down]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.4 with breeze_rod[custom_name=["",{"text":"Choose This As Current Class","italic":false}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=16711680,item_model=arrow_down,custom_data={loadout3:1b}]
execute as @s[scores={loadoutid=3}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.4 with lime_stained_glass_pane[custom_name=["",{"text":"Chosen As Current Class","italic":false,"color":"green"}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=65280,item_model=arrow_down]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.6 with breeze_rod[custom_name=["",{"text":"Choose This As Current Class","italic":false}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=16711680,item_model=arrow_down,custom_data={loadout4:1b}]
execute as @s unless score @s allowedclasses matches 4.. at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.6 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED]","italic":false,"color":"red"}],enchantment_glint_override=true]
execute as @s[scores={loadoutid=4}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.6 with lime_stained_glass_pane[custom_name=["",{"text":"Chosen As Current Class","italic":false,"color":"green"}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=65280,item_model=arrow_down]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.8 with breeze_rod[custom_name=["",{"text":"Choose This As Current Class","italic":false}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=16711680,item_model=arrow_down,custom_data={loadout5:1b}]
execute as @s unless score @s allowedclasses matches 5.. at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.8 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED]","italic":false,"color":"red"}],enchantment_glint_override=true]
execute as @s[scores={loadoutid=5}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.8 with lime_stained_glass_pane[custom_name=["",{"text":"Chosen As Current Class","italic":false,"color":"green"}],enchantment_glint_override=true,tooltip_display={hidden_components:["dyed_color"]},dyed_color=65280,item_model=arrow_down]

execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.20 with piglin_spawn_egg[custom_name=["",{"text":"Change Preffered Team","italic":false,"underlined":true,"color":"yellow"}],enchantment_glint_override=true]
#execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.20 with saddle[custom_name=["",{"text":"Test Your Class!","italic":false,"underlined":true,"color":"yellow"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.21 with knowledge_book[custom_name=["",{"text":"Show In Chat Current Class","italic":false,"underlined":true,"color":"green"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.22 with chorus_fruit[custom_name=["",{"text":"Randomize Current Class","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true]
execute as @s[level=..59] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.22 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED] (Level Not High Enough [60])","italic":false,"color":"red"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.23 with minecraft:player_head[minecraft:custom_name={"text":"Change Factions","color":"gold","underlined":true,"italic":false},profile={id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}]
execute as @s[level=..19] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.23 with red_stained_glass_pane[custom_name=["",{"text":"[LOCKED] (Level Not High Enough [20])","italic":false,"color":"red"}],enchantment_glint_override=true]
execute as @s at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=loadoutchangechest] container.24 with written_book[custom_name=["",{"text":"Choose Default Pre-Made Class","italic":false,"underlined":true,"color":"light_purple"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces Your Current Class With A Pre-Made One","italic":false,"color":"gold"}]]]

execute as @s if items entity @s player.cursor wooden_sword run scoreboard players set @s loadoutchangeid 1
execute as @s if items entity @s player.cursor wooden_sword run scoreboard players operation @s loadouttemppart1 = @s loadout1part1
execute as @s if items entity @s player.cursor wooden_sword run scoreboard players operation @s loadouttemppart2 = @s loadout1part2
execute as @s at @s if items entity @s player.cursor wooden_sword run playsound ui.button.click master @s ~ ~ ~ 0.8 0.95 0
execute as @s if items entity @s player.cursor wooden_sword run scoreboard players set @s page 1

execute as @s if items entity @s player.cursor stone_sword run scoreboard players set @s loadoutchangeid 2
execute as @s if items entity @s player.cursor stone_sword run scoreboard players operation @s loadouttemppart1 = @s loadout2part1
execute as @s if items entity @s player.cursor stone_sword run scoreboard players operation @s loadouttemppart2 = @s loadout2part2
execute as @s at @s if items entity @s player.cursor stone_sword run playsound ui.button.click master @s ~ ~ ~ 0.8 0.95 0
execute as @s if items entity @s player.cursor stone_sword run scoreboard players set @s page 1

execute as @s if items entity @s player.cursor iron_sword[custom_data={notitem:1b}] run scoreboard players set @s loadoutchangeid 3
execute as @s if items entity @s player.cursor iron_sword[custom_data={notitem:1b}] run scoreboard players operation @s loadouttemppart1 = @s loadout3part1
execute as @s if items entity @s player.cursor iron_sword[custom_data={notitem:1b}] run scoreboard players operation @s loadouttemppart2 = @s loadout3part2
execute as @s at @s if items entity @s player.cursor iron_sword[custom_data={notitem:1b}] run playsound ui.button.click master @s ~ ~ ~ 0.8 0.95 0
execute as @s if items entity @s player.cursor iron_sword[custom_data={notitem:1b}] run scoreboard players set @s page 1

execute as @s if items entity @s player.cursor diamond_sword run scoreboard players set @s loadoutchangeid 4
execute as @s if items entity @s player.cursor diamond_sword run scoreboard players operation @s loadouttemppart1 = @s loadout4part1
execute as @s if items entity @s player.cursor diamond_sword run scoreboard players operation @s loadouttemppart2 = @s loadout4part2
execute as @s at @s if items entity @s player.cursor diamond_sword run playsound ui.button.click master @s ~ ~ ~ 0.8 0.95 0
execute as @s if items entity @s player.cursor diamond_sword run scoreboard players set @s page 1

execute as @s if items entity @s player.cursor netherite_sword run scoreboard players set @s loadoutchangeid 5
execute as @s if items entity @s player.cursor netherite_sword run scoreboard players operation @s loadouttemppart1 = @s loadout5part1
execute as @s if items entity @s player.cursor netherite_sword run scoreboard players operation @s loadouttemppart2 = @s loadout5part2
execute as @s at @s if items entity @s player.cursor netherite_sword run playsound ui.button.click master @s ~ ~ ~ 0.8 0.95 0
execute as @s if items entity @s player.cursor netherite_sword run scoreboard players set @s page 1

execute as @s if items entity @s player.cursor breeze_rod[custom_data={loadout1:1b}] run scoreboard players set @s loadoutid 1
execute as @s if items entity @s player.cursor breeze_rod[custom_data={loadout2:1b}] run scoreboard players set @s loadoutid 2
execute as @s if items entity @s player.cursor breeze_rod[custom_data={loadout3:1b}] run scoreboard players set @s loadoutid 3
execute as @s if items entity @s player.cursor breeze_rod[custom_data={loadout4:1b}] run scoreboard players set @s loadoutid 4
execute as @s if items entity @s player.cursor breeze_rod[custom_data={loadout5:1b}] run scoreboard players set @s loadoutid 5

execute as @s if items entity @s player.cursor piglin_spawn_egg run scoreboard players set @s page 12
execute as @s at @s if items entity @s player.cursor piglin_spawn_egg run playsound entity.piglin.jealous master @s ~ ~ ~ 0.7 1 0

execute as @s if items entity @s player.cursor saddle run tag @s add testclass

execute as @s if items entity @s player.cursor knowledge_book run tag @s add showmyloadout
execute as @s at @s if items entity @s player.cursor knowledge_book run playsound entity.villager.work_librarian master @s ~ ~ ~ 1 1 0

execute as @s if items entity @s player.cursor chorus_fruit run tag @s add randomloadout
execute as @s at @s if items entity @s player.cursor chorus_fruit run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.7 1

execute as @s if items entity @s player.cursor player_head run scoreboard players set @s page 6
execute as @s at @s if items entity @s player.cursor player_head run playsound ui.button.click master @s ~ ~ ~ 0.7 0.8 0

execute as @s at @s if items entity @s player.cursor written_book[!custom_data={dontclear:1b}] run playsound item.book.page_turn master @s ~ ~ ~ 1 1 0
execute as @s if items entity @s player.cursor written_book[!custom_data={dontclear:1b}] run scoreboard players set @s page -2