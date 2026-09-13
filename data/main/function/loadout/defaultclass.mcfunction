scoreboard players set @s page -1

execute if items entity @s player.cursor spectral_arrow run tag @s add dc1
execute if items entity @s player.cursor reinforced_deepslate run tag @s add dc2
execute if items entity @s player.cursor feather run tag @s add dc3
execute if items entity @s player.cursor redstone_torch run tag @s add dc4
execute if items entity @s player.cursor wind_charge run tag @s add dc5

execute if score @s[tag=dc1] loadoutid matches 1 run scoreboard players set @s loadout1part1 32132174
execute if score @s[tag=dc1] loadoutid matches 1 run scoreboard players set @s loadout1part2 2253
execute if score @s[tag=dc1] loadoutid matches 2 run scoreboard players set @s loadout2part1 32132174
execute if score @s[tag=dc1] loadoutid matches 2 run scoreboard players set @s loadout2part2 2253
execute if score @s[tag=dc1] loadoutid matches 3 run scoreboard players set @s loadout3part1 32132174
execute if score @s[tag=dc1] loadoutid matches 3 run scoreboard players set @s loadout3part2 2253
execute if score @s[tag=dc1] loadoutid matches 4 run scoreboard players set @s loadout4part1 32132174
execute if score @s[tag=dc1] loadoutid matches 4 run scoreboard players set @s loadout4part2 2253
execute if score @s[tag=dc1] loadoutid matches 5 run scoreboard players set @s loadout5part1 32132174
execute if score @s[tag=dc1] loadoutid matches 5 run scoreboard players set @s loadout5part2 2253
scoreboard players set @s[tag=dc1] 3killstreak 2
scoreboard players set @s[tag=dc1] 5killstreak 1
scoreboard players set @s[tag=dc1] 7killstreak 1
tag @s remove dc1

execute if score @s[tag=dc2] loadoutid matches 1 run scoreboard players set @s loadout1part1 23253353
execute if score @s[tag=dc2] loadoutid matches 1 run scoreboard players set @s loadout1part2 1421
execute if score @s[tag=dc2] loadoutid matches 2 run scoreboard players set @s loadout2part1 23253353
execute if score @s[tag=dc2] loadoutid matches 2 run scoreboard players set @s loadout2part2 1421
execute if score @s[tag=dc2] loadoutid matches 3 run scoreboard players set @s loadout3part1 23253353
execute if score @s[tag=dc2] loadoutid matches 3 run scoreboard players set @s loadout3part2 1421
execute if score @s[tag=dc2] loadoutid matches 4 run scoreboard players set @s loadout4part1 23253353
execute if score @s[tag=dc2] loadoutid matches 4 run scoreboard players set @s loadout4part2 1421
execute if score @s[tag=dc2] loadoutid matches 5 run scoreboard players set @s loadout5part1 23253353
execute if score @s[tag=dc2] loadoutid matches 5 run scoreboard players set @s loadout5part2 1421
scoreboard players set @s[tag=dc2] 3killstreak 2
scoreboard players set @s[tag=dc2] 5killstreak 1
scoreboard players set @s[tag=dc2] 7killstreak 1
tag @s remove dc2

execute if score @s[tag=dc3] loadoutid matches 1 run scoreboard players set @s loadout1part1 41321237
execute if score @s[tag=dc3] loadoutid matches 1 run scoreboard players set @s loadout1part2 5341
execute if score @s[tag=dc3] loadoutid matches 2 run scoreboard players set @s loadout2part1 41321237
execute if score @s[tag=dc3] loadoutid matches 2 run scoreboard players set @s loadout2part2 5341
execute if score @s[tag=dc3] loadoutid matches 3 run scoreboard players set @s loadout3part1 41321237
execute if score @s[tag=dc3] loadoutid matches 3 run scoreboard players set @s loadout3part2 5341
execute if score @s[tag=dc3] loadoutid matches 4 run scoreboard players set @s loadout4part1 41321237
execute if score @s[tag=dc3] loadoutid matches 4 run scoreboard players set @s loadout4part2 5341
execute if score @s[tag=dc3] loadoutid matches 5 run scoreboard players set @s loadout5part1 41321237
execute if score @s[tag=dc3] loadoutid matches 5 run scoreboard players set @s loadout5part2 5341
scoreboard players set @s[tag=dc3] 3killstreak 2
scoreboard players set @s[tag=dc3] 5killstreak 2
scoreboard players set @s[tag=dc3] 7killstreak 2
tag @s remove dc3

execute if score @s[tag=dc4] loadoutid matches 1 run scoreboard players set @s loadout1part1 11144146
execute if score @s[tag=dc4] loadoutid matches 1 run scoreboard players set @s loadout1part2 3562
execute if score @s[tag=dc4] loadoutid matches 2 run scoreboard players set @s loadout2part1 11144146
execute if score @s[tag=dc4] loadoutid matches 2 run scoreboard players set @s loadout2part2 3562
execute if score @s[tag=dc4] loadoutid matches 3 run scoreboard players set @s loadout3part1 11144146
execute if score @s[tag=dc4] loadoutid matches 3 run scoreboard players set @s loadout3part2 3562
execute if score @s[tag=dc4] loadoutid matches 4 run scoreboard players set @s loadout4part1 11144146
execute if score @s[tag=dc4] loadoutid matches 4 run scoreboard players set @s loadout4part2 3562
execute if score @s[tag=dc4] loadoutid matches 5 run scoreboard players set @s loadout5part1 11144146
execute if score @s[tag=dc4] loadoutid matches 5 run scoreboard players set @s loadout5part2 3562
scoreboard players set @s[tag=dc4] 3killstreak 1
scoreboard players set @s[tag=dc4] 5killstreak 2
scoreboard players set @s[tag=dc4] 7killstreak 1
tag @s remove dc4

execute if score @s[tag=dc5] loadoutid matches 1 run scoreboard players set @s loadout1part1 54312415
execute if score @s[tag=dc5] loadoutid matches 1 run scoreboard players set @s loadout1part2 1613
execute if score @s[tag=dc5] loadoutid matches 2 run scoreboard players set @s loadout2part1 54312415
execute if score @s[tag=dc5] loadoutid matches 2 run scoreboard players set @s loadout2part2 1613
execute if score @s[tag=dc5] loadoutid matches 3 run scoreboard players set @s loadout3part1 54312415
execute if score @s[tag=dc5] loadoutid matches 3 run scoreboard players set @s loadout3part2 1613
execute if score @s[tag=dc5] loadoutid matches 4 run scoreboard players set @s loadout4part1 54312415
execute if score @s[tag=dc5] loadoutid matches 4 run scoreboard players set @s loadout4part2 1613
execute if score @s[tag=dc5] loadoutid matches 5 run scoreboard players set @s loadout5part1 54312415
execute if score @s[tag=dc5] loadoutid matches 5 run scoreboard players set @s loadout5part2 1613
scoreboard players set @s[tag=dc5] 3killstreak 1
scoreboard players set @s[tag=dc5] 5killstreak 2
scoreboard players set @s[tag=dc5] 7killstreak 2
tag @s remove dc5

execute if score @s[scores={prestige=0}] loadoutid matches 1 run tag @s add loadout1dc
execute if score @s[scores={prestige=0}] loadoutid matches 2 run tag @s add loadout2dc