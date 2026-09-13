scoreboard players display numberformat version mcpvw fixed {"text":"1.0.9a","italic":false,"color":"gold"}
tellraw @a [{"text":"Running","color":"yellow"},{"text":" PvW","color":"gold"},{"text":" plugin version: ","color":"yellow"},{"score":{"name":"version","objective":"mcpvw"}},{"text":" for","color":"yellow"},{"text":" Minecraft","color":"green"},{"text":" version","color":"yellow"},{"text":" 1.21.10","color":"gold"}]
scoreboard objectives add mcpvw dummy
scoreboard objectives modify mcpvw displayname {"text":"PvW","color":"gold"}
scoreboard objectives setdisplay sidebar mcpvw
scoreboard players display name Online mcpvw {"text":"Players","color":"aqua"}
scoreboard players display name version mcpvw {"text":"Version","color":"yellow"}
scoreboard players display name TPS mcpvw {"text":"TPS","color":"green"}

gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule projectilesCanBreakBlocks false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doWeatherCycle false
scoreboard objectives add damagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damagedealt2 minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damagedealtperlife dummy
scoreboard objectives add damageabsorbed minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add damagetaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add damagetaken2 minecraft.custom:minecraft.damage_taken
scoreboard objectives add damagetakenpertick minecraft.custom:minecraft.damage_taken
scoreboard objectives add totalkills minecraft.custom:minecraft.player_kills
scoreboard objectives add killstreak minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkillstreak minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill2 minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill3 minecraft.custom:minecraft.player_kills
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add death2 minecraft.custom:minecraft.deaths
scoreboard objectives add deathstreak minecraft.custom:minecraft.deaths
scoreboard objectives add totaldeaths minecraft.custom:minecraft.deaths
scoreboard objectives add damagedealtround minecraft.custom:minecraft.damage_dealt
scoreboard objectives add totaldamagedealt dummy
scoreboard objectives add totaldamagedealtround dummy
scoreboard objectives add goathornuse minecraft.used:minecraft.goat_horn
scoreboard objectives add bowuse minecraft.used:minecraft.bow
scoreboard objectives add crossbowuse minecraft.used:minecraft.crossbow
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add shieldbash minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add creeperspawnegg minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add climbladder minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add bowuse minecraft.used:minecraft.bow
scoreboard objectives add crossbowuse minecraft.used:minecraft.crossbow
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add frogspawnegg minecraft.used:minecraft.frog_spawn_egg
scoreboard objectives add echosharduse minecraft.used:minecraft.echo_shard
scoreboard objectives add stonebuttonuse minecraft.used:minecraft.stone_button
scoreboard objectives add blackstonebuttonuse minecraft.used:minecraft.polished_blackstone_button
scoreboard objectives add netherstaruse minecraft.used:minecraft.nether_star
scoreboard objectives add spawneruse minecraft.used:minecraft.spawner
scoreboard objectives add lightningroduse minecraft.used:minecraft.lightning_rod
scoreboard objectives add piglinspawnegg minecraft.used:minecraft.piglin_spawn_egg
scoreboard objectives add witherspawnegg minecraft.used:minecraft.wither_spawn_egg
scoreboard objectives add magmaspawnegg minecraft.used:minecraft.magma_cube_spawn_egg
scoreboard objectives add endroduse minecraft.used:minecraft.end_rod
scoreboard objectives add flintuse minecraft.used:minecraft.flint
scoreboard objectives add leavegame minecraft.custom:minecraft.leave_game
scoreboard objectives add boneuse minecraft.used:minecraft.bone
scoreboard objectives add fireworkstaruse minecraft.used:minecraft.firework_star
scoreboard objectives add pistonuse minecraft.used:minecraft.piston
scoreboard objectives add tripwirehookuse minecraft.used:minecraft.tripwire_hook
scoreboard objectives add noteblockuse minecraft.used:minecraft.note_block
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add hopperminecartuse minecraft.used:minecraft.hopper_minecart
scoreboard objectives add lingeringpotionuse minecraft.used:minecraft.lingering_potion
scoreboard objectives add splashpotionuse minecraft.used:minecraft.splash_potion
scoreboard objectives add tridentuse minecraft.used:minecraft.trident
scoreboard objectives add snowballuse minecraft.used:minecraft.snowball
scoreboard objectives add villageregguse minecraft.used:minecraft.villager_spawn_egg
scoreboard objectives add stickypistonuse minecraft.used:minecraft.sticky_piston
scoreboard objectives add turtleegguse minecraft.used:minecraft.turtle_spawn_egg
scoreboard objectives add whitewooluse minecraft.used:minecraft.white_wool
scoreboard objectives add allkills minecraft.custom:minecraft.player_kills
scoreboard objectives add alldeaths deathCount

scoreboard objectives add menu trigger
scoreboard objectives add class trigger
scoreboard objectives add leave trigger
scoreboard objectives add radio trigger
#scoreboard objectives add duelplayer trigger
#scoreboard objectives add duelaccept trigger
scoreboard objectives add emote trigger
scoreboard objectives add trade trigger
scoreboard objectives add switchteams trigger
scoreboard objectives add stats trigger
scoreboard objectives add graffiti trigger
scoreboard objectives add hourbonus trigger

scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy
scoreboard objectives add shieldtemp dummy
scoreboard objectives add exptemp1 dummy
scoreboard objectives add exptemp2 dummy
scoreboard objectives add attackdamage dummy
scoreboard objectives add rotationx1 dummy
scoreboard objectives add rotationx2 dummy
scoreboard objectives add rotationp dummy
scoreboard objectives add rotationm dummy
scoreboard objectives add health dummy
scoreboard objectives add food dummy
scoreboard objectives add absorptionamount dummy
scoreboard objectives add playerid dummy
scoreboard objectives add number dummy
scoreboard objectives add vatime dummy
scoreboard objectives add arrowrot dummy
scoreboard objectives add arrowrot2 dummy
scoreboard objectives add arrowdmg dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer2 dummy
scoreboard objectives add Piglins dummy
scoreboard objectives add Withers dummy
scoreboard objectives add Win dummy
scoreboard objectives add seconds dummy
scoreboard objectives add playercount dummy
scoreboard objectives add piglincount dummy
scoreboard objectives add withercount dummy
scoreboard objectives add piglinuav dummy
scoreboard objectives add witheruav dummy
scoreboard objectives add piglinemp dummy
scoreboard objectives add witheremp dummy
scoreboard objectives add ptemp dummy
scoreboard objectives add wtemp dummy
scoreboard objectives add piglinnuke dummy
scoreboard objectives add withernuke dummy
scoreboard objectives setdisplay below_name health
scoreboard players set 2 number 2
scoreboard players set 4 number 4
scoreboard players set 5 number 5
scoreboard players set 20 number 20
scoreboard players set 10 number 10
scoreboard players set 100 number 100
scoreboard players set 1000 number 1000
scoreboard players set 10000 number 10000
scoreboard players set 100000 number 100000
scoreboard players set 1000000 number 1000000
scoreboard players set 10000000 number 10000000
scoreboard players set 65793 number 65793
scoreboard players set -1 rotationp -1
scoreboard objectives add page dummy
scoreboard objectives add loadoutid dummy
scoreboard objectives add loadoutchangeid dummy
scoreboard objectives add loadout1part1 dummy
scoreboard objectives add loadout1part2 dummy
scoreboard objectives add loadout2part1 dummy
scoreboard objectives add loadout2part2 dummy
scoreboard objectives add loadout3part1 dummy
scoreboard objectives add loadout3part2 dummy
scoreboard objectives add loadout4part1 dummy
scoreboard objectives add loadout4part2 dummy
scoreboard objectives add loadout5part1 dummy
scoreboard objectives add loadout5part2 dummy
scoreboard objectives add loadouttemppart1 dummy
scoreboard objectives add loadouttemppart2 dummy
scoreboard objectives add classslot1 dummy
scoreboard objectives add classslot2 dummy
scoreboard objectives add classslot3 dummy
scoreboard objectives add classslot4 dummy
scoreboard objectives add classslot5 dummy
scoreboard objectives add classslot6 dummy
scoreboard objectives add classslot7 dummy
scoreboard objectives add classslot8 dummy
scoreboard objectives add classslot9 dummy
scoreboard objectives add classslot10 dummy
scoreboard objectives add classslot11 dummy
scoreboard objectives add classslot12 dummy

scoreboard objectives add classslot11variation dummy
scoreboard objectives add factionslotvariation dummy

scoreboard objectives add graffitislot1 dummy
scoreboard objectives add graffitislot2 dummy
scoreboard objectives add graffitislot3 dummy

scoreboard objectives add resupply dummy
scoreboard objectives add fieldupgrade dummy
scoreboard objectives add armortrim1 dummy
scoreboard objectives add material1 dummy
scoreboard objectives add particle1 dummy
scoreboard objectives add armortrim2 dummy
scoreboard objectives add material2 dummy
scoreboard objectives add particle2 dummy
scoreboard objectives add armortrim3 dummy
scoreboard objectives add material3 dummy
scoreboard objectives add particle3 dummy
scoreboard objectives add weaponskinslotprimary1 dummy
scoreboard objectives add weaponskinslotprimary2 dummy
scoreboard objectives add weaponskinslotprimary3 dummy
scoreboard objectives add weaponskinslotprimary4 dummy
scoreboard objectives add weaponskinslotprimary5 dummy
scoreboard objectives add weaponskinslotprimary6 dummy
scoreboard objectives add weaponskinslotprimary7 dummy
scoreboard objectives add weaponskinslotprimary8 dummy
scoreboard objectives add callingcard dummy
scoreboard objectives add bool dummy
scoreboard objectives add bool2 dummy
scoreboard objectives add binocularsenergy dummy
scoreboard objectives add distance dummy
scoreboard objectives add random dummy
scoreboard objectives add waiting dummy
scoreboard objectives add maxplayercount dummy
scoreboard objectives add freeslot dummy
scoreboard objectives add chosenslot dummy
scoreboard objectives add invslot0 dummy
scoreboard objectives add invslot1 dummy
scoreboard objectives add invslot2 dummy
scoreboard objectives add invslot3 dummy
scoreboard objectives add invslot4 dummy
scoreboard objectives add invslot5 dummy
scoreboard objectives add invslot6 dummy
scoreboard objectives add invslot7 dummy
scoreboard objectives add invslot9 dummy
scoreboard objectives add invslot10 dummy
scoreboard objectives add invslot11 dummy
scoreboard objectives add invslot12 dummy
scoreboard objectives add invslot13 dummy
scoreboard objectives add invslot14 dummy
scoreboard objectives add invslot15 dummy
scoreboard objectives add invslot16 dummy
scoreboard objectives add invslot18 dummy
scoreboard objectives add invslot19 dummy
scoreboard objectives add invslot20 dummy
scoreboard objectives add invslot21 dummy
scoreboard objectives add invslot22 dummy
scoreboard objectives add invslot23 dummy
scoreboard objectives add invslot24 dummy
scoreboard objectives add invslot25 dummy
scoreboard objectives add arrowcount dummy
scoreboard objectives add ballistaarrowdmg dummy
scoreboard objectives add planting dummy
scoreboard objectives add defusing dummy
scoreboard objectives add spectate dummy
scoreboard objectives add lobbymusictimer dummy
scoreboard objectives add prestige dummy
scoreboard objectives add actionbarwait dummy
scoreboard objectives add ffauav dummy
scoreboard objectives add ffaemp dummy
scoreboard objectives add mapname dummy
scoreboard objectives add update dummy
scoreboard objectives add ffanuke dummy
scoreboard objectives add winstreak dummy
scoreboard objectives add matchid dummy
scoreboard objectives add prestigetoken dummy
scoreboard objectives add allowedclasses dummy
scoreboard objectives add netherite dummy
scoreboard objectives add doublexp dummy
scoreboard objectives add opening dummy
scoreboard objectives add gamemode dummy
scoreboard objectives add caseslot1 dummy
scoreboard objectives add caseslot2 dummy
scoreboard objectives add caseslot3 dummy
scoreboard objectives add caseslot4 dummy
scoreboard objectives add caseslot5 dummy
scoreboard objectives add caseslot6 dummy
scoreboard objectives add caseslot7 dummy
scoreboard objectives add healthregen dummy
scoreboard objectives add fieldupgradetimer dummy
scoreboard objectives add ftcooldown dummy
scoreboard objectives add success dummy
scoreboard objectives add piglinteamfaction dummy
scoreboard objectives add witherteamfaction dummy
scoreboard objectives add goathorntimer dummy
scoreboard objectives add count dummy
scoreboard objectives add factiondeathstreak deathCount
scoreboard objectives add headshotcount dummy
scoreboard objectives add move dummy
scoreboard objectives add prefferedpiglinteamfaction dummy
scoreboard objectives add prefferedwitherteamfaction dummy
scoreboard objectives add 360count dummy
scoreboard objectives add airkillcount dummy
scoreboard objectives add legendarykillcount dummy
scoreboard objectives add autocam dummy
scoreboard objectives add motionx dummy
scoreboard objectives add motiony dummy
scoreboard objectives add motionz dummy
scoreboard objectives add killstemp dummy
scoreboard objectives add deathstemp dummy
scoreboard objectives add highestkillstreak dummy
scoreboard objectives add attackerid dummy
scoreboard objectives add attackertempid dummy
scoreboard objectives add assistid dummy
scoreboard objectives add assisttemp dummy
scoreboard objectives add expcount dummy
scoreboard objectives add expcounttemp dummy
scoreboard objectives add expcounttimer dummy
scoreboard objectives add playercounttemp dummy
scoreboard objectives add emotetimer dummy
scoreboard objectives add 3killstreak dummy
scoreboard objectives add 5killstreak dummy
scoreboard objectives add 7killstreak dummy
scoreboard objectives add bounces dummy
scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
scoreboard objectives add move2 dummy
scoreboard objectives add previewtime dummy
scoreboard objectives add witherrandomsaturation dummy
scoreboard objectives add sneakattack dummy
scoreboard objectives add customhealth dummy
scoreboard objectives add poisontimer dummy
scoreboard objectives add voiceovertimer dummy
scoreboard objectives add tradeplayerid dummy
scoreboard objectives add tradetimer dummy
scoreboard objectives add musicdisc dummy
scoreboard objectives add targethp dummy
scoreboard objectives add mapmusic dummy
scoreboard objectives add binocularstemp dummy
scoreboard objectives add prefferedteam dummy
scoreboard objectives add graffititimer dummy
scoreboard objectives add selectedgraffitislot dummy
scoreboard objectives add graffitislottemp dummy
scoreboard objectives add notonground dummy
scoreboard objectives add bonus dummy
scoreboard objectives add loadmaptimer dummy
scoreboard objectives add hsdmg4timer dummy
scoreboard objectives add casedroptemp dummy
scoreboard objectives add lapisdust dummy
scoreboard objectives add spectatoramount dummy
scoreboard objectives add storagefreeslot dummy
scoreboard objectives add spectatortemp dummy
scoreboard objectives add ironarmorskin dummy
scoreboard objectives add netheritearmorskin dummy
scoreboard objectives add chainmailarmorskin dummy
scoreboard objectives add itemtemp dummy
scoreboard objectives add item dummy
scoreboard objectives add saturationlevel dummy

team add red
team add Neutral
team add piglin
team add wither
team add piglinffa
team add witherffa
team modify red color red
team modify Neutral color yellow
team modify Neutral friendlyFire false
team modify piglin color gold
team modify wither color aqua
team modify piglin friendlyFire false
team modify wither friendlyFire false
team modify piglin nametagVisibility hideForOtherTeams
team modify wither nametagVisibility hideForOtherTeams
team modify Neutral collisionRule never
team modify piglinffa color gold
team modify witherffa color aqua
team modify piglinffa friendlyFire true
team modify witherffa friendlyFire true
team modify piglinffa nametagVisibility always
team modify witherffa nametagVisibility always
forceload add 10019 -30 10019 30
forceload add 20000 0
forceload add 30000 0
forceload add 40000 0
forceload add 50000 0
forceload add 60000 0
forceload add 70000 0
forceload add 80000 0
forceload add 90000 0
forceload add 100000 0
forceload add 110000 0
#forceload add 20000 10000 20192 10192
forceload add 20000 10000
forceload add 30000 10000
forceload add 40000 10000
forceload add 50000 10000
forceload add 60000 10000
forceload add 70000 10000
forceload add 80000 10000
forceload add 90000 10000
forceload add 100000 10000
forceload add 110000 10000
bossbar add mp10timer "Timer"
bossbar add mp10firstplace "First Place"
bossbar add mp9timer "Timer"
bossbar add mp9piglins "Piglins"
bossbar add mp9withers "Withers"
bossbar add mp9bomb "Bomb"
bossbar add mp8timer "Timer"
bossbar add mp8piglins "Piglins"
bossbar add mp8withers "Withers"
bossbar add mp7timer "Timer"
bossbar add mp6piglins "Piglins"
bossbar add mp6withers "Withers"
bossbar add mp6timer "Timer"
bossbar add mp5piglins "Piglins"
bossbar add mp5withers "Withers"
bossbar add mp5timer "Timer"
bossbar add mp5zone "Zone"
bossbar add mp4piglins "Piglins"
bossbar add mp4withers "Withers"
bossbar add mp4timer "Timer"
bossbar add mp4bomb "Bomb"
bossbar add mp3piglins "Piglins"
bossbar add mp3withers "Withers"
bossbar add mp3timer "Timer"
bossbar add mp2piglins "Piglins"
bossbar add mp2withers "Withers"
bossbar add mp2timer "Timer"
bossbar add mp2zone "Zone"
bossbar add mp1timer "Timer"
bossbar add mp1firstplace "First Place"
bossbar set minecraft:mp10timer color yellow
bossbar set minecraft:mp10firstplace color red
bossbar set minecraft:mp9timer color yellow
bossbar set minecraft:mp9piglins color red
bossbar set minecraft:mp9withers color blue
bossbar set minecraft:mp9bomb color purple
bossbar set minecraft:mp8timer color yellow
bossbar set minecraft:mp8piglins color red
bossbar set minecraft:mp8withers color blue
bossbar set minecraft:mp7timer color yellow
bossbar set minecraft:mp6piglins color red
bossbar set minecraft:mp6withers color blue
bossbar set minecraft:mp6timer color yellow
bossbar set minecraft:mp5piglins color red
bossbar set minecraft:mp5withers color blue
bossbar set minecraft:mp5timer color yellow
bossbar set minecraft:mp5zone color purple
bossbar set minecraft:mp4piglins color red
bossbar set minecraft:mp4withers color blue
bossbar set minecraft:mp4timer color yellow
bossbar set minecraft:mp4bomb color purple
bossbar set minecraft:mp3piglins color red
bossbar set minecraft:mp3withers color blue
bossbar set minecraft:mp3timer color yellow
bossbar set minecraft:mp2piglins color red
bossbar set minecraft:mp2withers color blue
bossbar set minecraft:mp2timer color yellow
bossbar set minecraft:mp2zone color purple
bossbar set minecraft:mp1timer color yellow
bossbar set minecraft:mp1firstplace color red
gamerule commandModificationBlockLimit 2000000
scoreboard objectives setdisplay list playerid
scoreboard objectives add emblems dummy
scoreboard players set @e[tag=mp1as] maxplayercount 12
scoreboard players set @e[tag=mp2as] maxplayercount 18
scoreboard players set @e[tag=mp3as] maxplayercount 18
scoreboard players set @e[tag=mp4as] maxplayercount 18
scoreboard players set @e[tag=mp5as] maxplayercount 18
scoreboard players set @e[tag=mp6as] maxplayercount 18
scoreboard players set @e[tag=mp7as] maxplayercount 18
scoreboard players set @e[tag=mp8as] maxplayercount 18
scoreboard players set @e[tag=mp9as] maxplayercount 18
scoreboard players set @e[tag=mp10as] maxplayercount 12
#scoreboard players set @e[tag=mp1as] matchid 1
#scoreboard players set @e[tag=mp2as] matchid 2
#scoreboard players set @e[tag=mp3as] matchid 3
#scoreboard players set @e[tag=mp4as] matchid 4
#scoreboard players set @e[tag=mp5as] matchid 5
#scoreboard players set @e[tag=mp6as] matchid 6
#scoreboard players set @e[tag=mp7as] matchid 7
#scoreboard players set @e[tag=mp8as] matchid 8
#scoreboard players set @e[tag=mp9as] matchid 9
#scoreboard players set @e[tag=mp10as] matchid 10
#execute as @e[tag=mpas] run scoreboard players set @s waiting 1200
scoreboard players display numberformat @e[tag=mp1as] gamemode fixed {"text":"Free For All","italic":false,"color":"red"}
scoreboard players display numberformat @e[tag=mp2as] gamemode fixed {"text":"Headquarters","italic":false,"color":"gold"}
scoreboard players display numberformat @e[tag=mp3as] gamemode fixed {"text":"Team Deathmatch","italic":false,"color":"aqua"}
scoreboard players display numberformat @e[tag=mp4as] gamemode fixed {"text":"Search And Destroy","italic":false,"color":"blue"}
scoreboard players display numberformat @e[tag=mp5as] gamemode fixed {"text":"Castle Wars","italic":false,"color":"light_purple"}
scoreboard players display numberformat @e[tag=mp6as] gamemode fixed {"text":"Infected","italic":false,"color":"dark_aqua"}
scoreboard players display numberformat @e[tag=mp7as] gamemode fixed {"text":"Juggernaut","italic":false,"color":"dark_purple"}
scoreboard players display numberformat @e[tag=mp8as] gamemode fixed {"text":"Prop Hunt","italic":false,"color":"dark_green"}
scoreboard players display numberformat @e[tag=mp9as] gamemode fixed {"text":"Demolition","italic":false,"color":"red"}
scoreboard players display numberformat @e[tag=mp10as] gamemode fixed {"text":"Gun Game","italic":false,"color":"gold"}