execute as @a unless score @s temp matches 0.. run scoreboard players set @s temp 0
execute as @a[scores={playerkillstreak=0}] run scoreboard players set @s temp 0
execute as @a[scores={playerkillstreak=2,temp=..1}] unless score @s killstreak matches 3 run playsound minecraft:music_disc.tdmdoublekill voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=2,temp=..1}] run scoreboard players set @s temp 2
execute as @a[scores={playerkillstreak=3,temp=..2}] unless score @s killstreak matches 3 run playsound minecraft:music_disc.tdmtriplekill voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=3,temp=..2}] run scoreboard players set @s temp 3
execute as @a[scores={playerkillstreak=4,temp=..3}] unless score @s killstreak matches 5 run playsound minecraft:music_disc.tdmoverkill voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=4,temp=..3}] run scoreboard players set @s temp 4
execute as @a[scores={playerkillstreak=5,temp=..4}] unless score @s killstreak matches 5 run playsound minecraft:music_disc.tdmrampage voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=5,temp=..4}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 5 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=5,temp=..4}] run scoreboard players set @s temp 5
execute as @a[scores={playerkillstreak=6,temp=..5}] unless score @s killstreak matches 7 run playsound minecraft:music_disc.tdmuntouch voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=6,temp=..5}] run scoreboard players set @s temp 6
execute as @a[scores={playerkillstreak=7,temp=..6}] unless score @s killstreak matches 7 run playsound minecraft:music_disc.tdminvinsible voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=7,temp=..6}] run scoreboard players set @s temp 7
execute as @a[scores={playerkillstreak=8,temp=..7}] run playsound minecraft:music_disc.tdmunfrik voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=8,temp=..7}] run scoreboard players set @s temp 8
execute as @a[scores={playerkillstreak=9,temp=..8}] run playsound minecraft:music_disc.tdmincon voice @s ~ ~ ~ 1 1 1
execute as @a[scores={playerkillstreak=9,temp=..8}] run scoreboard players set @s temp 9
execute as @a[scores={playerkillstreak=10,temp=..9}] at @s run playsound minecraft:music_disc.tfimortal voice @s ~ ~ ~ 2 1 1
execute as @a[scores={playerkillstreak=10,temp=..9}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 10 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=10,temp=..9}] run scoreboard players set @s temp 10
execute as @a[scores={playerkillstreak=11,temp=..10}] at @s run playsound minecraft:music_disc.tfonemanarmy voice @s ~ ~ ~ 2 1 1
execute as @a[scores={playerkillstreak=11,temp=..10}] run scoreboard players set @s temp 11
execute as @a[scores={playerkillstreak=12,temp=..11}] at @s run playsound minecraft:music_disc.tfkillyonare voice @s ~ ~ ~ 2 1 1
execute as @a[scores={playerkillstreak=12,temp=..11}] run scoreboard players set @s temp 12
execute as @a[scores={playerkillstreak=13,temp=..12}] at @s run playsound minecraft:music_disc.tfnightmare voice @s ~ ~ ~ 2 1 1
execute as @a[scores={playerkillstreak=13,temp=..12}] run scoreboard players set @s temp 13
execute as @a[scores={playerkillstreak=14,temp=..13}] at @s unless score @s killstreak matches 15 run playsound minecraft:music_disc.tfwarlord voice @s ~ ~ ~ 2 1 1
execute as @a[scores={playerkillstreak=14,temp=..13}] run scoreboard players set @s temp 14
execute as @a[scores={playerkillstreak=15,temp=..14}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 15 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=15,temp=..14}] run scoreboard players set @s temp 15
execute as @a[scores={playerkillstreak=20,temp=..19}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 20 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=20,temp=..19}] run scoreboard players set @s temp 20
execute as @a[scores={playerkillstreak=25,temp=..24}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 25 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=25,temp=..24}] run scoreboard players set @s temp 25
execute as @a[scores={playerkillstreak=30,temp=..29}] at @s run tellraw @a[distance=..1000] ["",{"selector":"@s"}," Got",{"text": " 30 Kills","color":"red"}," In A Row!"]
execute as @a[scores={playerkillstreak=30,temp=..29}] run scoreboard players set @s temp 30