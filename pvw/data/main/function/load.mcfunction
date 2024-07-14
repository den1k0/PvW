tellraw @a [{"text":"Running PvW plugin version:","color":"yellow"},{"text":" 0.4","color":"gold"}]
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule projectilesCanBreakBlocks false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doMobLoot false
scoreboard objectives add damagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damageabsorbed minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add damagetaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add killstreak minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkillstreak minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill2 minecraft.custom:minecraft.player_kills
scoreboard objectives add playerkill3 minecraft.custom:minecraft.player_kills
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add damagedealtround minecraft.custom:minecraft.damage_dealt
scoreboard objectives add totaldamagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add totaldamagedealtround minecraft.custom:minecraft.damage_dealt
scoreboard objectives add goathornuse minecraft.used:minecraft.goat_horn
scoreboard objectives add bowuse minecraft.used:minecraft.bow
scoreboard objectives add crossbowuse minecraft.used:minecraft.crossbow
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add shieldbash minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add creeperspawnegg minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add climbladder minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add bowuse minecraft.used:minecraft.bow
scoreboard objectives add crossbowuse minecraft.used:minecraft.crossbow
scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
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
scoreboard objectives setdisplay below_name health
scoreboard players set 2 number 2
scoreboard players set 20 number 20
scoreboard players set 10 number 10
scoreboard players set 100 number 100
scoreboard players set 1000 number 1000
scoreboard players set 10000 number 10000
scoreboard players set 100000 number 100000
scoreboard players set 1000000 number 1000000
scoreboard players set 10000000 number 10000000
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
scoreboard objectives add resupply dummy
scoreboard objectives add fieldupgrade dummy
team add Neutral
team add piglin
team add wither
team modify Neutral color yellow
team modify Neutral friendlyFire false
team modify piglin color gold
team modify wither color aqua
team modify piglin friendlyFire false
team modify wither friendlyFire false
team modify piglin nametagVisibility hideForOtherTeams
team modify wither nametagVisibility hideForOtherTeams
forceload add 20000 0
forceload add 30000 0
forceload add 40000 0
forceload add 50000 0
forceload add 60000 0
forceload add 20000 10000 20128 10128
forceload add 30000 10000 30128 10128
forceload add 40000 10000 40128 10128
forceload add 50000 10000 50128 10128
forceload add 60000 10000 60128 10128
bossbar add mp3piglins "Piglins"
bossbar add mp3withers "Withers"
bossbar add mp3timer "Timer"
bossbar set minecraft:mp3piglins color red
bossbar set minecraft:mp3withers color blue
bossbar set minecraft:mp3timer color yellow
gamerule commandModificationBlockLimit 1000000
scoreboard objectives setdisplay list playerkillstreak