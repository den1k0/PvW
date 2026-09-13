
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 from entity @s enderchest.17
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with jigsaw[custom_name=["",{"text":"Trade","italic":false,"color":"dark_purple"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Use /trade To Choose Player ID To Trade With","italic":false,"color":"gold"}]]]
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.21 with lime_stained_glass_pane[custom_name=["",{"text":"Use Item","italic":false,"color":"green"}],enchantment_glint_override=true]
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.23 with red_stained_glass_pane[custom_name=["",{"text":"Delete Item","italic":false,"color":"red"}],enchantment_glint_override=true]
execute at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.26 with pink_bundle[custom_name=["",{"text":"Gift","italic":false,"color":"light_purple"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Use /trade To Choose Player ID To Gift To","italic":false,"color":"gold"}]]]

execute at @s if items entity @s player.cursor jigsaw unless score @s tradeplayerid matches 1.. run tellraw @s [{"text":"You Havent Selected Player ID To Trade With! Use /trade","color":"red"}]
execute at @s if items entity @s player.cursor jigsaw if score @s tradeplayerid matches 1.. run scoreboard players set @s page -3
execute at @s if items entity @s player.cursor pink_bundle unless score @s tradeplayerid matches 1.. run tellraw @s [{"text":"You Havent Selected Player ID To Gift To! Use /trade","color":"red"}]
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. at @a[distance=0.1..] if score @p playerid = @s tradeplayerid run item replace entity @p enderchest.8 from entity @s enderchest.17
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. at @a[distance=0.1..] if score @p playerid = @s tradeplayerid run tag @p add itemtoinventory
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. at @a[distance=0.1..] if score @p playerid = @s tradeplayerid run tellraw @p [{"text":"You Received An Item From A Player!","color":"green"}]
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. run tag @s add deleteitem
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. run tellraw @s [{"text":"Item Gifted!","color":"green"}]
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. run scoreboard players reset @s tradeplayerid
execute at @s if items entity @s player.cursor pink_bundle if score @s tradeplayerid matches 1.. run scoreboard players set @s page -1

execute at @s if items entity @s player.cursor red_stained_glass_pane run tag @s add deleteitem
execute at @s if items entity @s player.cursor red_stained_glass_pane run scoreboard players set @s page -1

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 dragon_breath[custom_data={doublexp:1b}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1 0.5 
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 dragon_breath[custom_data={doublexp:1b}] run scoreboard players add @s doublexp 3
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 dragon_breath[custom_data={doublexp:1b}] run tellraw @s [{"text": "Double XP Available For: ","italic":false,"color":"yellow"},{"score": {"name":"@s","objective": "doublexp"},"color": "green"},{"text": " Matches","italic":false,"color":"green"}]
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 dragon_breath[custom_data={doublexp:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 dragon_breath[custom_data={doublexp:1b}] run scoreboard players set @s page -1

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={chest:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={chest:1b}] run tag @s add dontupdate
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={chest:1b}] run tag @s add chestopen
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={chest:1b}] run scoreboard players set @s opening 0
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={chest:1b}] run scoreboard players set @s page -2

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={crate:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={crate:1b}] run tag @s add dontupdate
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={crate:1b}] run tag @s add crateopen
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={crate:1b}] run scoreboard players set @s opening 0
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={crate:1b}] run scoreboard players set @s page -2

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={capsule:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={capsule:1b}] run tag @s add dontupdate
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={capsule:1b}] run tag @s add capsuleopen
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={capsule:1b}] run scoreboard players set @s opening 0
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={capsule:1b}] run scoreboard players set @s page -2

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={frostbitecase:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={frostbitecase:1b}] run tag @s add dontupdate
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={frostbitecase:1b}] run tag @s add frostbitecaseopen
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={frostbitecase:1b}] run scoreboard players set @s opening 0
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={frostbitecase:1b}] run scoreboard players set @s page -2

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run playsound minecraft:entity.illusioner.prepare_mirror master @s[tag=!challengebottlewinmatchxp] ~ ~ ~ 1 0.85 1
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run playsound minecraft:block.note_block.bass master @s[tag=challengebottlewinmatchxp] ~ ~ ~ 0.7 0.7 0.7
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run tag @s[tag=!challengebottlewinmatchxp] add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run tellraw @s[tag=challengebottlewinmatchxp] {"text": "Challenge Already Active! Item Will Not Disappear.","color":"red"}
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run tellraw @s[tag=!challengebottlewinmatchxp] {"text": "Challenge Accepted!","color":"light_purple"}
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run tag @s add challengebottlewinmatchxp
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={challengebottlewinmatchxp:1b}] run scoreboard players set @s page -1

execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={musicdiscbox:1b}] run tag @s add deleteitem
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={musicdiscbox:1b}] run tag @s add dontupdate
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={musicdiscbox:1b}] run tag @s add boxopen
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={musicdiscbox:1b}] run scoreboard players set @s opening 0
execute at @s if items entity @s player.cursor lime_stained_glass_pane positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 *[custom_data={musicdiscbox:1b}] run scoreboard players set @s page -2