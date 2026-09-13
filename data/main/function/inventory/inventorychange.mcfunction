execute as @s[tag=deleteitem,tag=!dontupdate] run tag @s remove inventorychange
execute as @s[tag=deleteitem] run tag @s remove deleteitem
execute as @s[tag=updateinventory] run tag @s remove inventorychange
execute as @s[tag=updateinventory] run tag @s remove updateinventory
execute as @s[tag=dontupdate] run tag @s remove dontupdate

execute as @e[tag=inventorychangechest,type=chest_minecart] at @s positioned ~ ~-1.5 ~ at @p[tag=inventorychange,distance=..1] positioned ~ ~1.5 ~ run tp @s ^ ^ ^
execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest run scoreboard players set @s page -1

execute at @s run kill @e[type=item,distance=..2]
execute at @s positioned ~ ~1.5 ~ unless entity @e[tag=inventorychangechest,type=chest_minecart,distance=..1] run summon chest_minecart ^ ^ ^ {NoGravity:1b,Tags:["inventorychangechest"],DisplayState:{Name:"minecraft:barrier"},CustomName:["",{"text":"Inventory/Challenges/Settings/Prestige Mode","italic":false,"color":"aqua"}],Silent:1b,Invulnerable:1b}
execute at @s[] unless score @s opening matches 0.. unless score @s page matches -1 unless score @s page matches -3 positioned ~ ~1.5 ~ run data modify entity @e[type=chest_minecart,tag=inventorychangechest,limit=1,sort=nearest] Items set value []

execute at @s[tag=inventorychange,scores={page=-1,invslot0=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.0 * run scoreboard players set @s chosenslot 0
execute at @s[tag=inventorychange,scores={page=-1,invslot1=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.1 * run scoreboard players set @s chosenslot 1
execute at @s[tag=inventorychange,scores={page=-1,invslot2=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.2 * run scoreboard players set @s chosenslot 2
execute at @s[tag=inventorychange,scores={page=-1,invslot3=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.3 * run scoreboard players set @s chosenslot 3
execute at @s[tag=inventorychange,scores={page=-1,invslot4=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.4 * run scoreboard players set @s chosenslot 4
execute at @s[tag=inventorychange,scores={page=-1,invslot5=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.5 * run scoreboard players set @s chosenslot 5
execute at @s[tag=inventorychange,scores={page=-1,invslot6=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.6 * run scoreboard players set @s chosenslot 6
execute at @s[tag=inventorychange,scores={page=-1,invslot7=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.7 * run scoreboard players set @s chosenslot 7

execute at @s[tag=inventorychange,scores={page=-1,invslot9=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.9 * run scoreboard players set @s chosenslot 9
execute at @s[tag=inventorychange,scores={page=-1,invslot10=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.10 * run scoreboard players set @s chosenslot 10
execute at @s[tag=inventorychange,scores={page=-1,invslot11=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.11 * run scoreboard players set @s chosenslot 11
execute at @s[tag=inventorychange,scores={page=-1,invslot12=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.12 * run scoreboard players set @s chosenslot 12
execute at @s[tag=inventorychange,scores={page=-1,invslot13=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.13 * run scoreboard players set @s chosenslot 13
execute at @s[tag=inventorychange,scores={page=-1,invslot14=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.14 * run scoreboard players set @s chosenslot 14
execute at @s[tag=inventorychange,scores={page=-1,invslot15=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.15 * run scoreboard players set @s chosenslot 15
execute at @s[tag=inventorychange,scores={page=-1,invslot16=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.16 * run scoreboard players set @s chosenslot 16

execute at @s[tag=inventorychange,scores={page=-1,invslot18=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.18 * run scoreboard players set @s chosenslot 18
execute at @s[tag=inventorychange,scores={page=-1,invslot19=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.19 * run scoreboard players set @s chosenslot 19
execute at @s[tag=inventorychange,scores={page=-1,invslot20=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.20 * run scoreboard players set @s chosenslot 20
execute at @s[tag=inventorychange,scores={page=-1,invslot21=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.21 * run scoreboard players set @s chosenslot 21
execute at @s[tag=inventorychange,scores={page=-1,invslot22=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.22 * run scoreboard players set @s chosenslot 22
execute at @s[tag=inventorychange,scores={page=-1,invslot23=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.23 * run scoreboard players set @s chosenslot 23
execute at @s[tag=inventorychange,scores={page=-1,invslot24=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.24 * run scoreboard players set @s chosenslot 24
execute at @s[tag=inventorychange,scores={page=-1,invslot25=1}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.25 * run scoreboard players set @s chosenslot 25

execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.0 from entity @s enderchest.0
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 from entity @s enderchest.1
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.2 from entity @s enderchest.2
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.3 from entity @s enderchest.3
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.4 from entity @s enderchest.4
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.5 from entity @s enderchest.5
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.6 from entity @s enderchest.6
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.7 from entity @s enderchest.7
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 from entity @s enderchest.9
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 from entity @s enderchest.10
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 from entity @s enderchest.11
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.12 from entity @s enderchest.12
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 from entity @s enderchest.13
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.14 from entity @s enderchest.14
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.15 from entity @s enderchest.15
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 from entity @s enderchest.16
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 from entity @s enderchest.18
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 from entity @s enderchest.19
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.20 from entity @s enderchest.20
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.21 from entity @s enderchest.21
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 from entity @s enderchest.22
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.23 from entity @s enderchest.23
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.24 from entity @s enderchest.24
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.25 from entity @s enderchest.25

execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.8 with gunpowder[custom_name=["",{"text":"Settings","italic":false,"underlined":true}],enchantment_glint_override=true,custom_data={notitem:1b}]
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.17 with totem_of_undying[custom_name=["",{"text":"Achievements/Challenges","italic":false,"underlined":true}],enchantment_glint_override=true,custom_data={notitem:1b}]
execute at @s[scores={page=-1}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.26 with skeleton_skull[custom_name=["",{"text":"Prestige","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true,custom_data={notitem:1b}]

execute at @s[scores={page=3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with chorus_fruit[custom_name=["",{"text":"Loadout Randomizer: Off","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true]
execute at @s[scores={page=3},tag=randomizeloadoutjoin] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with chorus_fruit[custom_name=["",{"text":"Loadout Randomizer: On (Every Match Join)","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true]
execute at @s[scores={page=3},tag=randomizeloadoutdeath] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with chorus_fruit[custom_name=["",{"text":"Loadout Randomizer: On (Every Death)","italic":false,"underlined":true,"color":"gold"}],enchantment_glint_override=true]
execute at @s[scores={page=3},level=..59] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with red_stained_glass_pane[custom_name=[["",{"text":"Loadout Randomizer ","italic":false,"color":"red"},{"text":"[LOCKED | LEVEL NOT HIGH ENOUGH (60)]","italic":false,"color":"red"}]],enchantment_glint_override=true]

execute at @s[scores={page=3},tag=musicvolume100] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with music_disc_precipice[custom_name=["",{"text":"Music Volume: 100%","italic":false,"underlined":true}],enchantment_glint_override=true]
execute at @s[scores={page=3},tag=musicvolume50] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with music_disc_precipice[custom_name=["",{"text":"Music Volume: 50%","italic":false,"underlined":true}],enchantment_glint_override=true]
execute at @s[scores={page=3},tag=musicvolumeoff] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with music_disc_precipice[custom_name=["",{"text":"Music Volume: Off","italic":false,"underlined":true}],enchantment_glint_override=true]

execute at @s[scores={page=3},tag=!hideactionbar] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 with knowledge_book[custom_name=["",{"text":"Show Statistics At The Bottom Of The Screen: On","italic":false,"underlined":true}],enchantment_glint_override=true]
execute at @s[scores={page=3},tag=hideactionbar] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 with knowledge_book[custom_name=["",{"text":"Show Statistics At The Bottom Of The Screen: Off","italic":false,"underlined":true}],enchantment_glint_override=true]

execute at @s[scores={page=3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.12 with writable_book[custom_name=["",{"text":"Show Overall Stats","italic":false,"underlined":true,"color": "yellow"}],enchantment_glint_override=true]

execute at @s[scores={page=3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.17 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]

execute at @s[scores={page=3}] if items entity @s player.cursor chorus_fruit run tag @s add changerandomizer
execute at @s[scores={page=3}] if items entity @s player.cursor music_disc_precipice run tag @s add changevolume
execute at @s[scores={page=3}] if items entity @s player.cursor knowledge_book run tag @s add changeactionbar
execute at @s[scores={page=3}] if items entity @s player.cursor writable_book run function main:player/showstats

execute as @s[tag=changevolume,tag=musicvolume100] run tag @s add changevolumeto50
execute as @s[tag=changevolume,tag=musicvolume50] run tag @s add changevolumetooff
execute as @s[tag=changevolume,tag=musicvolumeoff] run tag @s add changevolumeto100
execute as @s[tag=changevolumeto50] run tag @s add musicvolume50
execute as @s[tag=changevolumeto50] run tag @s remove musicvolume100
execute as @s[tag=changevolumeto50] run tag @s remove changevolumeto50
execute as @s[tag=changevolumetooff] run tag @s add musicvolumeoff
execute as @s[tag=changevolumetooff] run tag @s remove musicvolume50
execute as @s[tag=changevolumetooff] run tag @s remove changevolumetooff
execute as @s[tag=changevolumeto100] run tag @s add musicvolume100
execute as @s[tag=changevolumeto100] run tag @s remove musicvolumeoff
execute as @s[tag=changevolumeto100] run tag @s remove changevolumeto100
execute as @s[tag=changevolume] run stopsound @s music
execute as @s[tag=changevolume] run scoreboard players set @s lobbymusictimer 5
tag @s remove changevolume

execute as @s[tag=changerandomizer,tag=!randomizeloadoutjoin,tag=!randomizeloadoutdeath] run tag @s add changerandomizertojoin
execute as @s[tag=changerandomizer,tag=randomizeloadoutdeath] run tag @s add changerandomizertonone
execute as @s[tag=changerandomizer,tag=randomizeloadoutjoin] run tag @s add changerandomizertodeath
execute as @s[tag=changerandomizertojoin] run tag @s add randomizeloadoutjoin
execute as @s[tag=changerandomizertojoin] run tag @s remove changerandomizertojoin
execute as @s[tag=changerandomizertonone] run tag @s remove randomizeloadoutdeath
execute as @s[tag=changerandomizertonone] run tag @s remove changerandomizertonone
execute as @s[tag=changerandomizertodeath] run tag @s add randomizeloadoutdeath
execute as @s[tag=changerandomizertodeath] run tag @s remove randomizeloadoutjoin
execute as @s[tag=changerandomizertodeath] run tag @s remove changerandomizertodeath
tag @s remove changerandomizer

execute as @s[tag=changeactionbar,tag=!hideactionbar] run tag @s add changeabtooff
execute as @s[tag=changeactionbar,tag=hideactionbar] run tag @s add changeabtoon
execute as @s[tag=changeabtooff] run tag @s add hideactionbar
execute as @s[tag=changeabtooff] run title @s actionbar ""
execute as @s[tag=changeabtoon] run tag @s remove hideactionbar
tag @s remove changeabtoon
tag @s remove changeabtooff
tag @s remove changeactionbar

# execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.2 with heavy_core[custom_name=[["",{"text":"Buy Particle Capsule ","italic":false,"color":"yellow"},{"text":"[5 Netherite]","italic":false,"color":"green"}]],enchantment_glint_override=true]
# execute at @s[scores={page=10}] unless score @s netherite matches 5.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.2 with red_stained_glass_pane[custom_name=[["",{"text":"Buy Particle Capsule ","italic":false,"color":"red"},{"text":"[LOCKED | NOT ENOUGH NETHERITE (5)]","italic":false,"color":"red"}]],enchantment_glint_override=true]
# execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 with chest[custom_name=[["",{"text":"Buy Armor Material Chest ","italic":false,"color":"yellow"},{"text":"[2 Netherite]","italic":false,"color":"green"}]],enchantment_glint_override=true]
# execute at @s[scores={page=10}] unless score @s netherite matches 2.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 with red_stained_glass_pane[custom_name=[["",{"text":"Buy Armor Material Chest ","italic":false,"color":"red"},{"text":"[LOCKED | NOT ENOUGH NETHERITE (2)]","italic":false,"color":"red"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.0 with barrel[custom_name=[["",{"text":"Buy Armor Skin Crate ","italic":false,"color":"yellow"},{"text":"[4 Netherite]","italic":false,"color":"green"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] unless score @s netherite matches 4.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.0 with red_stained_glass_pane[custom_name=[["",{"text":"Buy Armor Skin Trim Crate ","italic":false,"color":"red"},{"text":"[LOCKED | NOT ENOUGH NETHERITE (4)]","italic":false,"color":"red"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with emerald[custom_name=[["",{"text":"Prestige Tokens/Netherite/Lapis Dust: ","italic":false,"color":"gold"},{"text":"[CLICK TO SHOW IN CHAT]","italic":false,"color":"yellow"}]],enchantment_glint_override=true,lore=[["",{"text":"Get Prestige Tokens By Prestiging","italic":false,"color":"aqua"}]]]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with netherite_ingot[custom_name=[["",{"text":"Buy Netherite x20 ","italic":false,"color":"gold"},{"text":"[1 Prestige Token]","italic":false,"color":"yellow"}]],enchantment_glint_override=true,lore=[["",{"text":"Get Prestige Tokens By Prestiging","italic":false,"color":"aqua"}]]]
execute at @s[scores={page=10}] unless score @s prestigetoken matches 1.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with red_stained_glass_pane[custom_name=[["",{"text":"Buy Netherite x20 ","italic":false,"color":"red"},{"text":"[LOCKED | NOT ENOUGH TOKENS (1)]","italic":false,"color":"red"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with netherite_upgrade_smithing_template[custom_name=[["",{"text":"Buy New Loadout (MAX 5) ","italic":false,"color":"yellow"},{"text":"[1 Prestige Token]","italic":false,"color":"green"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] unless score @s prestigetoken matches 1.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with red_stained_glass_pane[custom_name=[["",{"text":"Buy New Loadout (MAX 5) ","italic":false,"color":"red"},{"text":"[LOCKED | NOT ENOUGH TOKENS (1)]","italic":false,"color":"red"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] if score @s allowedclasses matches 5.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with red_stained_glass_pane[custom_name=[["",{"text":"Buy New Loadout (MAX 5) ","italic":false,"color":"red"},{"text":"[LOCKED | MAX AMOUNT OF LOADOUTS ACQUIRED]","italic":false,"color":"red"}]],enchantment_glint_override=true]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with red_stained_glass_pane[custom_name=["",{"text":"Enter Prestige Mode (MAX 60 Level Required!) [LOCKED]","italic":false,"underlined":true,"color":"red"}],enchantment_glint_override=true]
execute at @s[scores={page=10},level=60..] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with wither_skeleton_skull[custom_name=["",{"text":"Enter Prestige Mode (MAX 60 Level Required!)","italic":false,"underlined":true}],enchantment_glint_override=true]
execute at @s[scores={page=10}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.17 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]

execute at @s[scores={page=10}] if items entity @s player.cursor wither_skeleton_skull run tag @s add prestigemode
execute at @s[scores={page=10}] if items entity @s player.cursor emerald run tellraw @s [{"text": "Prestige Tokens: ","italic":false,"color":"yellow"},{"score": {"name":"@s","objective": "prestigetoken"},"color": "green"}]
execute at @s[scores={page=10}] if items entity @s player.cursor emerald run tellraw @s [{"text": "Netherite: ","italic":false,"color":"gray"},{"score": {"name":"@s","objective": "netherite"},"color": "green"}]
execute at @s[scores={page=10}] if items entity @s player.cursor emerald run tellraw @s [{"text": "lapis Dust: ","italic":false,"color":"blue"},{"score": {"name":"@s","objective": "lapisdust"},"color": "green"}]
execute at @s[scores={page=10}] if items entity @s player.cursor netherite_ingot run scoreboard players add @s netherite 20
execute at @s[scores={page=10}] if items entity @s player.cursor netherite_ingot run scoreboard players remove @s prestigetoken 1
execute at @s[scores={page=10,prestigetoken=1..}] if items entity @s player.cursor netherite_upgrade_smithing_template if score @s allowedclasses matches 3..4 run scoreboard players add @s allowedclasses 1
execute at @s[scores={page=10,prestigetoken=1..}] if items entity @s player.cursor netherite_upgrade_smithing_template unless score @s allowedclasses matches ..5 run scoreboard players set @s allowedclasses 4
execute at @s[scores={page=10,prestigetoken=1..}] if items entity @s player.cursor netherite_upgrade_smithing_template run playsound minecraft:music_disc.rare music @s ~ ~ ~ 0.5 0.85 0.5
execute at @s[scores={page=10,prestigetoken=1..}] if items entity @s player.cursor netherite_upgrade_smithing_template run scoreboard players remove @s prestigetoken 1
execute at @s[scores={page=10}] if items entity @s player.cursor heavy_core run item replace entity @s enderchest.8 with heavy_core[custom_name={"text":"Particle Capsule","italic":false,"color":"yellow"},enchantment_glint_override=true,custom_data={capsule:1b},lore=[["",{"text":"Open The Capsule To Get A Random Particle Effect","italic":false,"color":"gold"}]]]
execute at @s[scores={page=10}] if items entity @s player.cursor heavy_core run tag @s add itemtoinventory
execute at @s[scores={page=10}] if items entity @s player.cursor heavy_core run scoreboard players remove @s netherite 5
execute at @s[scores={page=10}] if items entity @s player.cursor heavy_core run playsound minecraft:music_disc.medium master @s ~ ~ ~ 0.5 0.85 0.5

execute at @s[scores={page=10}] if items entity @s player.cursor chest run item replace entity @s enderchest.8 with chest[custom_name={"text":"Armor Material Chest","italic":false,"color":"green"},enchantment_glint_override=true,custom_data={chest:1b},lore=[["",{"text":"Open The Chest To Get A Random Armor Material","italic":false,"color":"gold"}]]]
execute at @s[scores={page=10}] if items entity @s player.cursor chest run tag @s add itemtoinventory
execute at @s[scores={page=10}] if items entity @s player.cursor chest run scoreboard players remove @s netherite 2
execute at @s[scores={page=10}] if items entity @s player.cursor chest run playsound minecraft:music_disc.medium master @s ~ ~ ~ 0.5 0.85 0.5

execute at @s[scores={page=10}] if items entity @s player.cursor barrel run item replace entity @s enderchest.8 with barrel[custom_name={"text":"Armor Skin Crate","italic":false,"color":"aqua"},enchantment_glint_override=true,custom_data={crate:1b},lore=[["",{"text":"Open The Crate To Get A Random Armor Skin","italic":false,"color":"gold"}]]]
execute at @s[scores={page=10}] if items entity @s player.cursor barrel run tag @s add itemtoinventory
execute at @s[scores={page=10}] if items entity @s player.cursor barrel run scoreboard players remove @s netherite 4
execute at @s[scores={page=10}] if items entity @s player.cursor barrel run playsound minecraft:music_disc.medium master @s ~ ~ ~ 0.5 0.85 0.5

execute as @s[tag=prestigemode] run experience set @s 1 levels
execute as @s[tag=prestigemode] run experience set @s 0 points
execute as @s[tag=prestigemode] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 20 normal
execute as @s[tag=prestigemode] at @s run playsound minecraft:music_disc.legendary master @s ~ ~ ~ 0.5 0.85 0.5
execute as @s[tag=prestigemode] run scoreboard players set @s loadout1part1 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout1part2 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout2part1 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout2part2 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout3part1 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout3part2 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout4part1 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout4part2 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout5part1 0
execute as @s[tag=prestigemode] run scoreboard players set @s loadout5part2 0
execute as @s[tag=prestigemode] run scoreboard players add @s prestigetoken 1
execute as @s[tag=prestigemode] run scoreboard players add @s prestige 1
execute as @s[tag=prestigemode] run tag @s remove prestigemode

execute as @s[tag=!inventorychange] run scoreboard players set @s invslot0 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot1 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot2 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot3 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot4 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot5 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot6 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot7 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot9 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot10 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot11 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot12 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot13 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot14 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot15 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot16 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot18 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot19 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot20 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot21 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot22 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot23 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot24 0
execute as @s[tag=!inventorychange] run scoreboard players set @s invslot25 0

execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.0 * run scoreboard players set @s invslot0 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.1 * run scoreboard players set @s invslot1 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.2 * run scoreboard players set @s invslot2 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.3 * run scoreboard players set @s invslot3 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.4 * run scoreboard players set @s invslot4 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.5 * run scoreboard players set @s invslot5 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.6 * run scoreboard players set @s invslot6 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.7 * run scoreboard players set @s invslot7 1

execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.9 * run scoreboard players set @s invslot9 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.10 * run scoreboard players set @s invslot10 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.11 * run scoreboard players set @s invslot11 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.12 * run scoreboard players set @s invslot12 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.13 * run scoreboard players set @s invslot13 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.14 * run scoreboard players set @s invslot14 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.15 * run scoreboard players set @s invslot15 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.16 * run scoreboard players set @s invslot16 1

execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.18 * run scoreboard players set @s invslot18 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 * run scoreboard players set @s invslot19 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.20 * run scoreboard players set @s invslot20 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.21 * run scoreboard players set @s invslot21 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.22 * run scoreboard players set @s invslot22 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.23 * run scoreboard players set @s invslot23 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.24 * run scoreboard players set @s invslot24 1
execute at @s[tag=!inventorychange] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.25 * run scoreboard players set @s invslot25 1

execute at @s[scores={page=-1}] if items entity @s player.cursor *[!custom_data={notitem:1b}] positioned ~ ~1.5 ~ run item replace entity @s enderchest.17 from entity @s player.cursor
execute at @s[scores={page=-1}] if items entity @s player.cursor *[!custom_data={notitem:1b}] run scoreboard players set @s page 1
execute at @s[scores={page=-1}] if items entity @s player.cursor gunpowder run scoreboard players set @s page 3
execute at @s[scores={page=-1}] if items entity @s player.cursor skeleton_skull run scoreboard players set @s page 10
execute at @s[scores={page=-1}] if items entity @s player.cursor totem_of_undying run scoreboard players set @s page 13

execute as @s[scores={page=1}] run function main:inventory/pages/page1

execute at @s[scores={opening=0}] positioned ~ ~1.5 ~ run data modify entity @e[type=chest_minecart,tag=inventorychangechest,limit=1,sort=nearest] Items set value []

execute at @s[tag=crateopen,scores={opening=0}] run function main:inventory/armoritemmodify
execute as @s[scores={page=-2,opening=0..},tag=crateopen] store result score @s random run random value 1..3
execute at @s[scores={page=-2,opening=0..},tag=crateopen] if score @s random matches 1 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with iron_chestplate[custom_name=["",{"text":"Iron Armor","italic":false,"color":"white"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]
execute at @s[scores={page=-2,opening=0..},tag=crateopen] if score @s random matches 2 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with netherite_chestplate[custom_name=["",{"text":"Netherite Armor","italic":false,"color":"dark_gray"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]
execute at @s[scores={page=-2,opening=0..},tag=crateopen] if score @s random matches 3 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with chainmail_chestplate[custom_name=["",{"text":"Chainmail Armor","italic":false,"color":"gray"}],enchantment_glint_override=true,tooltip_display={hidden_components:["attribute_modifiers"]}]

execute at @s[scores={page=-2,opening=0..},tag=crateopen] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.7 0.5 0.7
execute at @s[scores={page=-2,opening=59},tag=crateopen] run particle poof ~ ~1 ~ 1 1 1 0 20 normal @s
execute at @s[scores={page=-2,opening=59},tag=crateopen] if data entity @s EnderItems[-1].components."minecraft:custom_data".common run playsound minecraft:music_disc.common master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=59},tag=crateopen] if data entity @s EnderItems[-1].components."minecraft:custom_data".rare run playsound minecraft:music_disc.medium master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=59},tag=crateopen] if data entity @s EnderItems[-1].components."minecraft:custom_data".epic run playsound minecraft:music_disc.rare master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=59},tag=crateopen] if data entity @s EnderItems[-1].components."minecraft:custom_data".legendary run playsound minecraft:music_disc.legendary master @s ~ ~ ~ 1 1 1
execute at @s[scores={opening=59},tag=crateopen] run tag @s remove crateopen

execute at @s[tag=capsuleopen,scores={opening=0}] run playsound minecraft:block.heavy_core.break master @s ~ ~ ~ 1 0.5 1
execute as @s[tag=capsuleopen,scores={opening=0}] store result score @s random run random value 1..48
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 1..5 run item replace entity @s enderchest.26 with sugar[custom_name=["",{"text":"Particle: Quartz Powder Shine","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle1] if score @s random matches 1..5 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 1..5 run tag @s add particle1
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 6..10 run item replace entity @s enderchest.26 with slime_ball[custom_name=["",{"text":"Effect: Slime Jump","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle2] if score @s random matches 6..10 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 6..10 run tag @s add particle2
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 11..15 run item replace entity @s enderchest.26 with prismarine_crystals[custom_name=["",{"text":"Particle: Quartz Powder Shine","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle3] if score @s random matches 11..15 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 11..15 run tag @s add particle3
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 16..20 run item replace entity @s enderchest.26 with red_dye[custom_name=["",{"text":"Particle: Hearts","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle4] if score @s random matches 16..20 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 16..20 run tag @s add particle4
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 21..25 run item replace entity @s enderchest.26 with note_block[custom_name=["",{"text":"Particle: Note Particles","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle5] if score @s random matches 21..25 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 21..25 run tag @s add particle5
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 26..30 run item replace entity @s enderchest.26 with magma_cream[custom_name=["",{"text":"Effect: Fiery Armour","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle6] if score @s random matches 26..30 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 26..30 run tag @s add particle6

execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 31..33 run item replace entity @s enderchest.26 with anvil[custom_name=["",{"text":"Effect: Tough Fall","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle8] if score @s random matches 31..33 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 31..33 run tag @s add particle8
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 34..36 run item replace entity @s enderchest.26 with tnt[custom_name=["",{"text":"Effect: TNT Death","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle9] if score @s random matches 34..36 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 34..36 run tag @s add particle9
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 37..39 run item replace entity @s enderchest.26 with heart_of_the_sea[custom_name=["",{"text":"Particle: Cloud","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle10] if score @s random matches 37..39 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 37..39 run tag @s add particle10
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 40..42 run item replace entity @s enderchest.26 with blaze_powder[custom_name=["",{"text":"Effect: Blaze Punch","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle11] if score @s random matches 40..42 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 40..42 run tag @s add particle11
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 43..45 run item replace entity @s enderchest.26 with feather[custom_name=["",{"text":"Particle: Air Sweep","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle12] if score @s random matches 43..45 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 43..45 run tag @s add particle12

execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 46 run item replace entity @s enderchest.26 with echo_shard[custom_name=["",{"text":"Particle: Echo","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle15] if score @s random matches 46 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 46 run tag @s add particle15
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 47 run item replace entity @s enderchest.26 with orange_dye[custom_name=["",{"text":"Particle: Trial Chamber","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle16] if score @s random matches 47 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 47 run tag @s add particle16
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 48 run item replace entity @s enderchest.26 with purple_dye[custom_name=["",{"text":"Particle: Witch","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=capsuleopen,scores={opening=0},tag=particle17] if score @s random matches 48 run tag @s add duplicateitem
execute as @s[tag=capsuleopen,scores={opening=0}] if score @s random matches 48 run tag @s add particle17

execute as @s[scores={page=-2,opening=0..},tag=capsuleopen] store result score @s random run random value 1..48
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 1..5 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with sugar[custom_name=["",{"text":"Particle: Quartz Powder Shine","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 6..10 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with slime_ball[custom_name=["",{"text":"Effect: Slime Jump","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 11..15 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with prismarine_crystals[custom_name=["",{"text":"Particle: Quartz Powder Shine","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 16..20 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with red_dye[custom_name=["",{"text":"Particle: Hearts","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 21..25 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with note_block[custom_name=["",{"text":"Particle: Note Particles","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 26..30 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with magma_cream[custom_name=["",{"text":"Effect: Fiery Armour","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 31..33 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with anvil[custom_name=["",{"text":"Effect: Tough Fall","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 34..36 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with tnt[custom_name=["",{"text":"Effect: TNT Death","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 37..39 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with heart_of_the_sea[custom_name=["",{"text":"Particle: Cloud","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 40..42 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with blaze_powder[custom_name=["",{"text":"Effect: Blaze Punch","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 43..45 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with feather[custom_name=["",{"text":"Particle: Air Sweep","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={medium:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 46 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with echo_shard[custom_name=["",{"text":"Particle: Echo","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 47 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with orange_dye[custom_name=["",{"text":"Particle: Trial Chamber","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] if score @s random matches 48 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with purple_dye[custom_name=["",{"text":"Particle: Witch","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute at @s[scores={page=-2,opening=0..},tag=capsuleopen] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.7 1.2 0.7
execute at @s[scores={page=-2,opening=59},tag=capsuleopen] run particle poof ~ ~1 ~ 1 1 1 0 20 normal @s
execute at @s[scores={page=-2,opening=59},tag=capsuleopen] if items entity @s enderchest.26 *[custom_data={common:1b}] run playsound minecraft:music_disc.common master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=59},tag=capsuleopen] if items entity @s enderchest.26 *[custom_data={medium:1b}] run playsound minecraft:music_disc.medium master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=59},tag=capsuleopen] if items entity @s enderchest.26 *[custom_data={rare:1b}] run playsound minecraft:music_disc.rare master @s ~ ~ ~ 1 1 1
execute at @s[scores={opening=59},tag=capsuleopen] run tag @s remove capsuleopen

execute at @s[tag=boxopen,scores={opening=0}] run playsound minecraft:block.beehive.shear master @s ~ ~ ~ 1 0.9 1
execute as @s[tag=boxopen,scores={opening=0}] store result score @s random run random value 1..3
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 1 run item replace entity @s enderchest.26 with music_disc_creator[custom_name=["",{"text":"Music Disc: Christmas Theme","italic":false,"color":"aqua"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Spawn/Out Of Time/Win/lost Themes","italic":false,"color":"yellow"}],["",{"text":"Extra: Snowflakes Float Around You (Only You See!)","italic":false,"color":"gold"}]]]
execute as @s[tag=boxopen,scores={opening=0},tag=musicdiscxmas] if score @s random matches 1 run tag @s add duplicateitem
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 1 run tag @s add musicdiscxmas
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 2 run item replace entity @s enderchest.26 with music_disc_relic[custom_name=["",{"text":"Music Disc: PvW Team Special Songs","italic":false,"color":"light_purple"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Lobby Music","italic":false,"color":"yellow"}],["",{"text":"Extra: Soul Fire Flames Float Around You (Only You Can See Them!)","italic":false,"color":"gold"}]]]
execute as @s[tag=boxopen,scores={opening=0},tag=musicdiscpvw] if score @s random matches 2 run tag @s add duplicateitem
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 2 run tag @s add musicdiscpvw
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 3 run item replace entity @s enderchest.26 with music_disc_pigstep[custom_name=["",{"text":"Music Disc: Event Tracks","italic":false,"color":"gold"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Lobby Music","italic":false,"color":"yellow"}],["",{"text":"Extra: Fire Particles Float Around You (Only You Can See Them!)","italic":false,"color":"gold"}]]]
execute as @s[tag=boxopen,scores={opening=0},tag=musicdiscevent] if score @s random matches 3 run tag @s add duplicateitem
execute as @s[tag=boxopen,scores={opening=0}] if score @s random matches 3 run tag @s add musicdiscevent

execute as @s[scores={page=-2,opening=0..},tag=boxopen] store result score @s random run random value 1..3
execute at @s[scores={page=-2,opening=0..},tag=boxopen] if score @s random matches 1 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with music_disc_creator[custom_name=["",{"text":"Music Disc: Christmas Theme","italic":false,"color":"aqua"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Spawn/Out Of Time/Win/lost Themes","italic":false,"color":"yellow"}],["",{"text":"Extra: Snowflakes Float Around You (Only You See!)","italic":false,"color":"gold"}]]]
execute at @s[scores={page=-2,opening=0..},tag=boxopen] if score @s random matches 2 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with music_disc_relic[custom_name=["",{"text":"Music Disc: PvW Team Special Songs","italic":false,"color":"light_purple"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Lobby Music","italic":false,"color":"yellow"}],["",{"text":"Extra: Soul Fire Flames Float Around You (Only You Can See Them!)","italic":false,"color":"gold"}]]]
execute at @s[scores={page=-2,opening=0..},tag=boxopen] if score @s random matches 3 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with music_disc_pigstep[custom_name=["",{"text":"Music Disc: Event Tracks","italic":false,"color":"gold"}],enchantment_glint_override=true,lore=[[""],["",{"text":"Replaces: Lobby Music","italic":false,"color":"yellow"}],["",{"text":"Extra: Fire Particles Float Around You (Only You Can See Them!)","italic":false,"color":"gold"}]]]
execute at @s[scores={page=-2,opening=0..},tag=boxopen] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.7 0.5 0.7
execute at @s[scores={page=-2,opening=59},tag=boxopen] run particle poof ~ ~1 ~ 1 1 1 0 20 normal @s
execute at @s[scores={page=-2,opening=59},tag=boxopen] if items entity @s enderchest.26 *[!custom_data] run playsound minecraft:music_disc.legendary master @s ~ ~ ~ 1 1 1
execute at @s[scores={opening=59},tag=boxopen] run tag @s remove boxopen

execute at @s[tag=frostbitecaseopen,scores={opening=0}] run playsound minecraft:block.shulker_box.open master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=frostbitecaseopen,scores={opening=0}] store result score @s random run random value 1..112
execute as @s[tag=frostbitecaseopen,scores={opening=0}] store result score @s casedroptemp run scoreboard players get @s random
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 1..11 run item replace entity @s enderchest.26 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_sword,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 12..22 run item replace entity @s enderchest.26 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_axe,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 23..33 run item replace entity @s enderchest.26 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 34..44 run item replace entity @s enderchest.26 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_tomahawk,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 45..55 run item replace entity @s enderchest.26 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_mace,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 56..66 run item replace entity @s enderchest.26 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 67..77 run item replace entity @s enderchest.26 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_battleaxe,custom_name=["",{"text":"Iron Battle Axe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]

execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 78..81 run item replace entity @s enderchest.26 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_sword,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 82..85 run item replace entity @s enderchest.26 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_axe,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 86..89 run item replace entity @s enderchest.26 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 90..93 run item replace entity @s enderchest.26 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_tomahawk,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 94..97 run item replace entity @s enderchest.26 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_mace,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 98..101 run item replace entity @s enderchest.26 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 102..105 run item replace entity @s enderchest.26 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_battleaxe,custom_name=["",{"text":"Iron Battle Axe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]

execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 106 run item replace entity @s enderchest.26 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color": "white"},{"text":"Wrapped Gift","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_sword,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 107 run item replace entity @s enderchest.26 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color": "white"},{"text":"Sweet Biscuit","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_axe,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 108 run item replace entity @s enderchest.26 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color": "white"},{"text":"Christmas Present","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 109 run item replace entity @s enderchest.26 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color": "white"},{"text":"Freshly Baked Cookie","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_tomahawk,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 110 run item replace entity @s enderchest.26 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color": "white"},{"text":"Sugary Lollipop","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_mace,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 111 run item replace entity @s enderchest.26 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color": "white"},{"text":"Candy Cane","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]
execute as @s[tag=frostbitecaseopen,scores={opening=0}] if score @s random matches 112 run item replace entity @s enderchest.26 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_battleaxe,custom_name=["",{"text":"Iron Battle Axe | ","italic":false,"color": "white"},{"text":"Tender Bun Roll","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]

execute at @s[tag=frostbitecaseopen,scores={opening=0}] run function main:inventory/itemmodify

execute as @s[tag=frostbitecaseopen,scores={opening=0}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=2}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=4}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=6}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=8}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=10}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=12}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=14}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=16}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=18}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=20}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=24}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=28}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=32}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=36}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=40}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=44}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=48}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=52}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=56}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=60}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=66}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=72}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=78}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=84}] run tag @s add caseslotmove
execute as @s[tag=frostbitecaseopen,scores={opening=90}] run tag @s add caseslotmove

execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 from entity @n[tag=inventorychangechest] container.11
execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 from entity @n[tag=inventorychangechest] container.12
execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.12 from entity @n[tag=inventorychangechest] container.13
execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 from entity @n[tag=inventorychangechest] container.14
execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.14 from entity @n[tag=inventorychangechest] container.15
execute as @s[tag=caseslotmove] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.15 from entity @n[tag=inventorychangechest] container.16
execute as @s[tag=caseslotmove] store result score @s caseslot7 run random value 1..112

execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 1..11 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_sword,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 12..22 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_axe,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 23..33 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 34..44 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_tomahawk,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 45..55 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_mace,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 56..66 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 67..77 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=frozen_battleaxe,custom_name=["",{"text":"Iron Battleaxe | ","italic":false,"color":"white"},{"text":"Frozen","italic":false,"color":"yellow"}],enchantment_glint_override=true,custom_data={common:1b}]

execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 78..81 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_sword,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 82..85 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_axe,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 86..89 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 90..93 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_tomahawk,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 94..97 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_mace,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 98..101 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 102..105 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=elite_frozen_battleaxe,custom_name=["",{"text":"Iron Battleaxe | ","italic":false,"color":"white"},{"text":"Elite Frozen","italic":false,"color":"aqua"}],enchantment_glint_override=true,custom_data={rare:1b}]

execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 106 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_sword[custom_name=["",{"text":"Iron Sword | ","italic":false,"color": "white"},{"text":"Wrapped Gift","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_sword,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 107 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stone_axe[custom_name=["",{"text":"Stone Axe | ","italic":false,"color": "white"},{"text":"Sweet Biscuit","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_axe,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 108 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_sword[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_dagger,custom_name=["",{"text":"Golden Dagger | ","italic":false,"color": "white"},{"text":"Christmas Present","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 109 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with golden_axe[custom_name=["",{"text":"Golden Axe | ","italic":false,"color": "white"},{"text":"Freshly Baked Cookie","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_tomahawk,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 110 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with mace[custom_name=["",{"text":"Mace | ","italic":false,"color": "white"},{"text":"Sugary Lollipop","italic":false,"color":"gold"}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_mace,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 111 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with stick[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_spear,custom_name=["",{"text":"Iron Spear | ","italic":false,"color": "white"},{"text":"Candy Cane","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]
execute as @s[tag=caseslotmove] at @s if score @s caseslot7 matches 112 positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 with iron_axe[dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=candy_battleaxe,custom_name=["",{"text":"Iron Battleaxe | ","italic":false,"color": "white"},{"text":"Tender Bun Roll","italic":false,"color":"gold"}],enchantment_glint_override=true,custom_data={legendary:1b}]

execute as @s[tag=caseslotmove] store result score @s random run random value 1..200
execute as @s[tag=caseslotmove] run scoreboard players operation @s random *= 65793 number
execute as @s[tag=caseslotmove] run scoreboard players add @s random 3618615

execute as @s[tag=caseslotmove,scores={opening=0}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[0].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=2}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[1].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=4}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[2].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=6}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[3].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=8}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[4].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=10}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[5].components."minecraft:dyed_color" int 1 run scoreboard players get @s random
execute as @s[tag=caseslotmove,scores={opening=12..}] at @s positioned ~ ~1.5 ~ store result entity @n[tag=inventorychangechest] Items[6].components."minecraft:dyed_color" int 1 run scoreboard players get @s random

execute as @s[tag=frostbitecaseopen,scores={opening=72}] at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 from entity @s enderchest.26

execute at @s[tag=caseslotmove] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.7 0.5 0.7
execute as @s[tag=caseslotmove] run tag @s remove caseslotmove

execute at @s[scores={page=-2,opening=99},tag=frostbitecaseopen] run particle poof ~ ~1 ~ 1 1 1 0 20 normal @s
execute at @s[scores={page=-2,opening=99},tag=frostbitecaseopen] if score @s casedroptemp matches 1..77 run playsound minecraft:music_disc.common master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=99},tag=frostbitecaseopen] if score @s casedroptemp matches 78..105 run playsound minecraft:music_disc.rare master @s ~ ~ ~ 1 1 1
execute at @s[scores={page=-2,opening=99},tag=frostbitecaseopen] if score @s casedroptemp matches 106..112 run playsound minecraft:music_disc.legendary master @s ~ ~ ~ 1 1 1

execute as @s[scores={opening=59..},tag=duplicateitem,tag=!frostbitecaseopen] run tellraw @s ["",{"text":"Duplicate Item!","color":"red"}]
execute as @s[scores={opening=59..},tag=duplicateitem,tag=!frostbitecaseopen] run tag @s remove duplicateitem

execute as @s[scores={opening=99..},tag=duplicateitem,tag=frostbitecaseopen] run tellraw @s ["",{"text":"Duplicate Item!","color":"red"}]
execute as @s[scores={opening=99..},tag=duplicateitem,tag=frostbitecaseopen] run tag @s remove duplicateitem
execute at @s[scores={opening=99},tag=frostbitecaseopen] run tag @s remove frostbitecaseopen

execute as @s[scores={opening=0..}] run scoreboard players add @s opening 1
execute as @s[scores={opening=60..},tag=!frostbitecaseopen] run scoreboard players reset @s opening
execute as @s[scores={opening=100..},tag=frostbitecaseopen] run scoreboard players reset @s opening

execute at @s[scores={page=-2}] unless score @s opening matches 0.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 from entity @s enderchest.26
execute at @s[scores={page=-2}] unless score @s opening matches 0.. positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.17 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.0 with iron_ingot[custom_name=["",{"text":"Do 100 Kills [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,allkills=100..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.0 with lime_stained_glass_pane[custom_name=["",{"text":"Do 100 Kills [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with gold_ingot[custom_name=["",{"text":"Do 250 Kills [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,allkills=250..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.9 with lime_stained_glass_pane[custom_name=["",{"text":"Do 250 Kills [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with diamond[custom_name=["",{"text":"Do 1000 Kills [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Golden Sword Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,allkills=1000..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with lime_stained_glass_pane[custom_name=["",{"text":"Do 1000 Kills [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Golden Sword Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 with iron_ingot[custom_name=["",{"text":"Do 25 Headshots [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,headshotcount=25..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 with lime_stained_glass_pane[custom_name=["",{"text":"Do 25 Headshots [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with gold_ingot[custom_name=["",{"text":"Do 75 Headshots [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,headshotcount=75..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 with lime_stained_glass_pane[custom_name=["",{"text":"Do 75 Headshots [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with diamond[custom_name=["",{"text":"Do 250 Headshots [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Battleaxe Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,headshotcount=250..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with lime_stained_glass_pane[custom_name=["",{"text":"Do 250 Headshots [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Battleaxe Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.2 with iron_ingot[custom_name=["",{"text":"Do 5 360-s [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,360count=5..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.2 with lime_stained_glass_pane[custom_name=["",{"text":"Do 5 360-s [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 with gold_ingot[custom_name=["",{"text":"Do 15 360-s [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,360count=15..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.11 with lime_stained_glass_pane[custom_name=["",{"text":"Do 15 360-s [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.20 with diamond[custom_name=["",{"text":"Do 50 360-s [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Spear Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,360count=50..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.20 with lime_stained_glass_pane[custom_name=["",{"text":"Do 50 360-s [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Spear Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.3 with iron_ingot[custom_name=["",{"text":"Do 2 Legendary Kills [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,legendarykillcount=2..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.3 with lime_stained_glass_pane[custom_name=["",{"text":"Do 2 Legendary Kills [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.12 with gold_ingot[custom_name=["",{"text":"Do 5 Legendary Kills [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,legendarykillcount=5..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.12 with lime_stained_glass_pane[custom_name=["",{"text":"Do 5 Legendary Kills [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.21 with diamond[custom_name=["",{"text":"Do 20 Legendary Kills [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Golden Axe Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,legendarykillcount=20..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.21 with lime_stained_glass_pane[custom_name=["",{"text":"Do 20 Legendary Kills [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Golden Axe Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.4 with iron_ingot[custom_name=["",{"text":"Get Prestige 1 [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,prestige=1..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.4 with lime_stained_glass_pane[custom_name=["",{"text":"Get Prestige 1 [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with gold_ingot[custom_name=["",{"text":"Get Prestige 2 [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,prestige=2..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with lime_stained_glass_pane[custom_name=["",{"text":"Get Prestige 2 [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 with diamond[custom_name=["",{"text":"Get Prestige 5 [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,prestige=5..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 with lime_stained_glass_pane[custom_name=["",{"text":"Get Prestige 5 [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.5 with iron_ingot[custom_name=["",{"text":"Get 25 Airborne Kills [Easy]","italic":false,"color":"gray"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,airkillcount=25..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.5 with lime_stained_glass_pane[custom_name=["",{"text":"Get 25 Airborne Kills [Easy] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Graffiti","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.14 with gold_ingot[custom_name=["",{"text":"Get 75 Airborne Kills [Medium]","italic":false,"color":"gold"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,airkillcount=75..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.14 with lime_stained_glass_pane[custom_name=["",{"text":"Get 75 Airborne Kills [Medium] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.23 with diamond[custom_name=["",{"text":"Get 250 Airborne Kills [Hard]","italic":false,"color":"aqua"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Mace Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13,airkillcount=250..}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.23 with lime_stained_glass_pane[custom_name=["",{"text":"Get 250 Airborne Kills [Hard] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Mace Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.6 with netherite_ingot[custom_name=["",{"text":"Get Whole Ender Chest Inventory Filled Up [Special]","italic":false,"color":"dark_purple"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Sword Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13},tag=chspecial1] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.6 with lime_stained_glass_pane[custom_name=["",{"text":"Get Whole Ender Chest Inventory Filled Up [Special] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Iron Sword Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.15 with netherite_ingot[custom_name=["",{"text":"Get Your First Nuke [Special]","italic":false,"color":"dark_purple"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Special Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13},tag=chspecial2] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.15 with lime_stained_glass_pane[custom_name=["",{"text":"Get Your First Nuke [Special] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Calling Card","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.24 with netherite_ingot[custom_name=["",{"text":"Get A 5 Winstreak [Special]","italic":false,"color":"dark_purple"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Stone Axe Skin","color":"dark_purple"}]],enchantment_glint_override=true]
execute at @s[scores={page=13},tag=chspecial3] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.24 with lime_stained_glass_pane[custom_name=["",{"text":"Get A 5 Winstreak [Special] (DONE)","italic":false,"color":"green"}],lore=[[""],["",{"text":"Reward: ","italic":false,"color":"yellow"},{"text":"Stone Axe Skin","color":"dark_purple"}]],enchantment_glint_override=true]

execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.13 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.18 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.21 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.23 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.26 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.1 with breeze_rod[custom_name=["",{"text":"Your Item","italic":false}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=arrow_down]
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.7 with breeze_rod[custom_name=["",{"text":"Their Item","italic":false}],enchantment_glint_override=true,dyed_color=16777215,tooltip_display={hidden_components:["dyed_color"]},item_model=arrow_down]
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.10 from entity @s enderchest.17
execute at @s[scores={page=-3}] at @a[tag=!ingame,scores={page=-3},distance=0.1..] if score @p[gamemode=!spectator] playerid = @s tradeplayerid positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.16 from entity @s enderchest.17
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.22 with barrier[custom_name=["",{"text":"Back","italic":false,"color":"red"}],enchantment_glint_override=true]

execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ unless items entity @n[tag=inventorychangechest] container.19 lime_stained_glass_pane run item replace entity @n[tag=inventorychangechest] container.19 with yellow_stained_glass_pane[custom_name=["",{"text":"Press Here To Be Ready To Trade!","italic":false,"color":"yellow"}],enchantment_glint_override=true]
execute at @s[scores={page=-3}] at @a[tag=!ingame,scores={page=-3},distance=0.1..] if score @p[gamemode=!spectator] playerid = @s tradeplayerid positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 yellow_stained_glass_pane at @s positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.25 with gray_stained_glass_pane[custom_name=["",{"text":"Player Is Not Ready!","italic":false,"color":"gray"}],enchantment_glint_override=true]
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 lime_stained_glass_pane at @a[tag=!ingame,scores={page=-3},distance=0.1..] if score @p[gamemode=!spectator] playerid = @s tradeplayerid positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.25 with lime_stained_glass_pane[custom_name=["",{"text":"Player Is Ready To Trade!","italic":false,"color":"green"}],enchantment_glint_override=true]
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 lime_stained_glass_pane if items entity @n[tag=inventorychangechest] container.25 lime_stained_glass_pane run tag @s add tradestart

execute at @s[scores={page=-3}] if items entity @s player.cursor yellow_stained_glass_pane positioned ~ ~1.5 ~ run item replace entity @n[tag=inventorychangechest] container.19 with lime_stained_glass_pane[custom_name=["",{"text":"You Are Ready To Trade!","italic":false,"color":"green"}],enchantment_glint_override=true]
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.25 gray_stained_glass_pane run tag @s remove tradestart
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.25 gray_stained_glass_pane run scoreboard players reset @s tradetimer
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.25 gray_stained_glass_pane run item replace entity @n[tag=inventorychangechest] container.13 with air
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 yellow_stained_glass_pane run tag @s remove tradestart
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 yellow_stained_glass_pane run scoreboard players reset @s tradetimer
execute at @s[scores={page=-3}] positioned ~ ~1.5 ~ if items entity @n[tag=inventorychangechest] container.19 yellow_stained_glass_pane run item replace entity @n[tag=inventorychangechest] container.13 with air

execute at @s[tag=tradestart] unless score @s page matches -3 run scoreboard players reset @s tradetimer
execute at @s[tag=tradestart] unless score @s page matches -3 run tag @s remove tradestart
execute at @s[scores={page=-3},tag=tradestart] run scoreboard players add @s tradetimer 1
execute at @s[scores={page=-3,tradetimer=1..20},tag=tradestart] run item replace entity @n[tag=inventorychangechest] container.13 with minecraft:player_head[minecraft:custom_name={"text":"3","color":"gold","underlined":true,"bold":true,"italic":false},profile={id:[I;1053620771,981355975,-1295956199,396280334],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRkMjJkYjhjNmUyMzhmYjhjYzA4MTlkMDJhNjU0MDMyOTdkNjNiNjdjNmM3Y2U2YjQzYmM4MjkxODk4MzdmNCJ9fX0="}]}] 1
execute at @s[scores={page=-3,tradetimer=21..40},tag=tradestart] run item replace entity @n[tag=inventorychangechest] container.13 with minecraft:player_head[minecraft:custom_name={"text":"2","color":"gold","underlined":true,"bold":true,"italic":false},profile={id:[I;-720744888,1500465743,-1875217748,267259291],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2U1MGM3MDk3OTk0MzEzZDk0MzIxNDJkYTc2NTFkYzZkZDYzMzU4N2UyZTFkZDlhNTYyYWJiYzc4NzhlZmI2NSJ9fX0="}]}] 1
execute at @s[scores={page=-3,tradetimer=41..60},tag=tradestart] run item replace entity @n[tag=inventorychangechest] container.13 with minecraft:player_head[minecraft:custom_name={"text":"1","color":"gold","underlined":true,"bold":true,"italic":false},profile={id:[I;-688849837,1203716652,-1312430162,1368834723],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0MzJhNTc1NmEwNGViZjA2MmQ3MmE2ZjMxYmQ2MmU4ZjRkODJhOTIxMjAzMzZhZTE5NzJmZTE4ZDM4NzBiYSJ9fX0="}]}] 1
execute at @s[scores={page=-3,tradetimer=1},tag=tradestart] run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1 0.7
execute at @s[scores={page=-3,tradetimer=21},tag=tradestart] run playsound block.note_block.hat master @s ~ ~ ~ 0.7 0.7 0.7
execute at @s[scores={page=-3,tradetimer=41},tag=tradestart] run playsound block.note_block.hat master @s ~ ~ ~ 0.7 1 0.7
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run playsound entity.illusioner.mirror_move master @s ~ ~ ~ 0.7 1 0.7
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run particle poof ~ ~1 ~ 0.3 0.4 0.3 0.05 20
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] at @a[distance=0.1..] if score @p playerid = @s tradeplayerid run item replace entity @p enderchest.8 from entity @s enderchest.17
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] at @a[distance=0.1..] if score @p playerid = @s tradeplayerid run tag @p add itemtoinventory
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run tellraw @s [{"text":"Traded Succesfully!","color":"green"}]
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run tag @s add deleteitem
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run tag @s add dontupdate
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run scoreboard players reset @s tradeplayerid
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run scoreboard players set @s page -1
execute at @s[scores={page=-3,tradetimer=61},tag=tradestart] run tag @s add tradeend
execute as @s[tag=tradeend] run scoreboard players reset @s tradetimer
execute as @s[tag=tradeend] run tag @s remove tradestart

execute at @s[tag=deleteitem,scores={chosenslot=0}] run item replace entity @s enderchest.0 with air
execute at @s[tag=deleteitem,scores={chosenslot=1}] run item replace entity @s enderchest.1 with air
execute at @s[tag=deleteitem,scores={chosenslot=2}] run item replace entity @s enderchest.2 with air
execute at @s[tag=deleteitem,scores={chosenslot=3}] run item replace entity @s enderchest.3 with air
execute at @s[tag=deleteitem,scores={chosenslot=4}] run item replace entity @s enderchest.4 with air
execute at @s[tag=deleteitem,scores={chosenslot=5}] run item replace entity @s enderchest.5 with air
execute at @s[tag=deleteitem,scores={chosenslot=6}] run item replace entity @s enderchest.6 with air
execute at @s[tag=deleteitem,scores={chosenslot=7}] run item replace entity @s enderchest.7 with air

execute at @s[tag=deleteitem,scores={chosenslot=9}] run item replace entity @s enderchest.9 with air
execute at @s[tag=deleteitem,scores={chosenslot=10}] run item replace entity @s enderchest.10 with air
execute at @s[tag=deleteitem,scores={chosenslot=11}] run item replace entity @s enderchest.11 with air
execute at @s[tag=deleteitem,scores={chosenslot=12}] run item replace entity @s enderchest.12 with air
execute at @s[tag=deleteitem,scores={chosenslot=13}] run item replace entity @s enderchest.13 with air
execute at @s[tag=deleteitem,scores={chosenslot=14}] run item replace entity @s enderchest.14 with air
execute at @s[tag=deleteitem,scores={chosenslot=15}] run item replace entity @s enderchest.15 with air
execute at @s[tag=deleteitem,scores={chosenslot=16}] run item replace entity @s enderchest.16 with air

execute at @s[tag=deleteitem,scores={chosenslot=18}] run item replace entity @s enderchest.18 with air
execute at @s[tag=deleteitem,scores={chosenslot=19}] run item replace entity @s enderchest.19 with air
execute at @s[tag=deleteitem,scores={chosenslot=20}] run item replace entity @s enderchest.20 with air
execute at @s[tag=deleteitem,scores={chosenslot=21}] run item replace entity @s enderchest.21 with air
execute at @s[tag=deleteitem,scores={chosenslot=22}] run item replace entity @s enderchest.22 with air
execute at @s[tag=deleteitem,scores={chosenslot=23}] run item replace entity @s enderchest.23 with air
execute at @s[tag=deleteitem,scores={chosenslot=24}] run item replace entity @s enderchest.24 with air
execute at @s[tag=deleteitem,scores={chosenslot=25}] run item replace entity @s enderchest.25 with air

execute at @s if items entity @s player.cursor * unless items entity @s player.cursor lime_stained_glass_pane unless items entity @s player.cursor red_stained_glass_pane unless items entity @s player.cursor blaze_rod unless items entity @s player.cursor barrier unless items entity @s player.cursor breeze_rod run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.7 0
execute at @s if items entity @s player.cursor blaze_rod run playsound ui.button.click master @s ~ ~ ~ 0.8 1.1 0
execute at @s if items entity @s player.cursor barrier run playsound ui.button.click master @s ~ ~ ~ 0.8 0.7 0
execute at @s if items entity @s player.cursor breeze_rod run playsound ui.button.click master @s ~ ~ ~ 0.8 1.1 0
execute if items entity @s player.cursor blaze_rod run scoreboard players remove @s page 1
execute unless score @s page matches -3 if items entity @s player.cursor breeze_rod run scoreboard players add @s page 1
execute if items entity @s player.cursor barrier run scoreboard players set @s page -1
execute as @s if items entity @s player.cursor barrier run tag @s add updateinventory
execute at @s if items entity @s player.cursor red_stained_glass_pane run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.7 0.5
item replace entity @s player.cursor with air
clear @s *[!minecraft:custom_data={dontclear:1b},!minecraft:custom_data={dontclear:1b,dontdrop:1b}]

execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s remove frostbitecaseopen
execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s remove capsuleopen
execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s remove crateopen
execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s remove chestopen
execute as @a[tag=!inventorychange] if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run scoreboard players reset @s opening
execute as @a if items entity @s weapon.mainhand ender_chest[custom_data={dontclear:1b}] run tag @s add inventorychange

execute as @e[tag=inventorychangechest] at @s positioned ~ ~-1.5 ~ unless entity @a[distance=..1,tag=inventorychange] run data modify entity @s Items set value []
execute as @e[tag=inventorychangechest] at @s positioned ~ ~-1.5 ~ unless entity @a[distance=..1,tag=inventorychange] run kill @s