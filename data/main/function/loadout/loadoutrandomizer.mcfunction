execute store result score @s classslot1 run random value 1..7
execute store result score @s classslot2 run random value 1..7
execute store result score @s classslot3 run random value 1..3
execute store result score @s classslot4 run random value 1..5
execute store result score @s classslot5 run random value 1..6
execute store result score @s classslot6 run random value 1..4
execute store result score @s classslot7 run random value 1..7
execute store result score @s classslot8 run random value 1..7
execute store result score @s classslot9 run random value 1..6
execute store result score @s classslot10 run random value 1..7
execute store result score @s classslot11 run random value 1..7
execute store result score @s classslot12 run random value 1..3

execute store result score @s classslot11variation run random value 1..7

execute store result score @s 3killstreak run random value 1..2
execute store result score @s 5killstreak run random value 1..2
execute store result score @s 7killstreak run random value 1..2

scoreboard players operation @s loadouttemppart1 = @s classslot1
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot2
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot3
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot4
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot5
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot6
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot7
scoreboard players operation @s loadouttemppart1 *= 10 number
scoreboard players operation @s loadouttemppart1 += @s classslot8

scoreboard players operation @s loadouttemppart2 = @s classslot9
scoreboard players operation @s loadouttemppart2 *= 10 number
scoreboard players operation @s loadouttemppart2 += @s classslot10
scoreboard players operation @s loadouttemppart2 *= 10 number
scoreboard players operation @s loadouttemppart2 += @s classslot11
scoreboard players operation @s loadouttemppart2 *= 10 number
scoreboard players operation @s loadouttemppart2 += @s classslot12

execute if score @s loadoutid matches 1 run scoreboard players operation @s loadout1part1 = @s loadouttemppart1
execute if score @s loadoutid matches 1 run scoreboard players operation @s loadout1part2 = @s loadouttemppart2
execute if score @s loadoutid matches 2 run scoreboard players operation @s loadout2part1 = @s loadouttemppart1
execute if score @s loadoutid matches 2 run scoreboard players operation @s loadout2part2 = @s loadouttemppart2
execute if score @s loadoutid matches 3 run scoreboard players operation @s loadout3part1 = @s loadouttemppart1
execute if score @s loadoutid matches 3 run scoreboard players operation @s loadout3part2 = @s loadouttemppart2
execute if score @s loadoutid matches 4 run scoreboard players operation @s loadout4part1 = @s loadouttemppart1
execute if score @s loadoutid matches 4 run scoreboard players operation @s loadout4part2 = @s loadouttemppart2
execute if score @s loadoutid matches 5 run scoreboard players operation @s loadout5part1 = @s loadouttemppart1
execute if score @s loadoutid matches 5 run scoreboard players operation @s loadout5part2 = @s loadouttemppart2

tag @s remove randomloadout