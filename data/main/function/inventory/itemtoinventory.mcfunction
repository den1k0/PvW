scoreboard players set @s freeslot -1

execute unless items entity @s enderchest.25 * run scoreboard players set @s freeslot 25
execute unless items entity @s enderchest.24 * run scoreboard players set @s freeslot 24
execute unless items entity @s enderchest.23 * run scoreboard players set @s freeslot 23
execute unless items entity @s enderchest.22 * run scoreboard players set @s freeslot 22
execute unless items entity @s enderchest.21 * run scoreboard players set @s freeslot 21
execute unless items entity @s enderchest.20 * run scoreboard players set @s freeslot 20
execute unless items entity @s enderchest.19 * run scoreboard players set @s freeslot 19
execute unless items entity @s enderchest.18 * run scoreboard players set @s freeslot 18

execute unless items entity @s enderchest.16 * run scoreboard players set @s freeslot 16
execute unless items entity @s enderchest.15 * run scoreboard players set @s freeslot 15
execute unless items entity @s enderchest.14 * run scoreboard players set @s freeslot 14
execute unless items entity @s enderchest.13 * run scoreboard players set @s freeslot 13
execute unless items entity @s enderchest.12 * run scoreboard players set @s freeslot 12
execute unless items entity @s enderchest.11 * run scoreboard players set @s freeslot 11
execute unless items entity @s enderchest.10 * run scoreboard players set @s freeslot 10
execute unless items entity @s enderchest.9 * run scoreboard players set @s freeslot 9

execute unless items entity @s enderchest.7 * run scoreboard players set @s freeslot 7
execute unless items entity @s enderchest.6 * run scoreboard players set @s freeslot 6
execute unless items entity @s enderchest.5 * run scoreboard players set @s freeslot 5
execute unless items entity @s enderchest.4 * run scoreboard players set @s freeslot 4
execute unless items entity @s enderchest.3 * run scoreboard players set @s freeslot 3
execute unless items entity @s enderchest.2 * run scoreboard players set @s freeslot 2
execute unless items entity @s enderchest.1 * run scoreboard players set @s freeslot 1
execute unless items entity @s enderchest.0 * run scoreboard players set @s freeslot 0

execute as @s[scores={freeslot=0}] run item replace entity @s enderchest.0 from entity @s enderchest.8
execute as @s[scores={freeslot=1}] run item replace entity @s enderchest.1 from entity @s enderchest.8
execute as @s[scores={freeslot=2}] run item replace entity @s enderchest.2 from entity @s enderchest.8
execute as @s[scores={freeslot=3}] run item replace entity @s enderchest.3 from entity @s enderchest.8
execute as @s[scores={freeslot=4}] run item replace entity @s enderchest.4 from entity @s enderchest.8
execute as @s[scores={freeslot=5}] run item replace entity @s enderchest.5 from entity @s enderchest.8
execute as @s[scores={freeslot=6}] run item replace entity @s enderchest.6 from entity @s enderchest.8
execute as @s[scores={freeslot=7}] run item replace entity @s enderchest.7 from entity @s enderchest.8

execute as @s[scores={freeslot=9}] run item replace entity @s enderchest.9 from entity @s enderchest.8
execute as @s[scores={freeslot=10}] run item replace entity @s enderchest.10 from entity @s enderchest.8
execute as @s[scores={freeslot=11}] run item replace entity @s enderchest.11 from entity @s enderchest.8
execute as @s[scores={freeslot=12}] run item replace entity @s enderchest.12 from entity @s enderchest.8
execute as @s[scores={freeslot=13}] run item replace entity @s enderchest.13 from entity @s enderchest.8
execute as @s[scores={freeslot=14}] run item replace entity @s enderchest.14 from entity @s enderchest.8
execute as @s[scores={freeslot=15}] run item replace entity @s enderchest.15 from entity @s enderchest.8
execute as @s[scores={freeslot=16}] run item replace entity @s enderchest.16 from entity @s enderchest.8

execute as @s[scores={freeslot=18}] run item replace entity @s enderchest.18 from entity @s enderchest.8
execute as @s[scores={freeslot=19}] run item replace entity @s enderchest.19 from entity @s enderchest.8
execute as @s[scores={freeslot=20}] run item replace entity @s enderchest.20 from entity @s enderchest.8
execute as @s[scores={freeslot=21}] run item replace entity @s enderchest.21 from entity @s enderchest.8
execute as @s[scores={freeslot=22}] run item replace entity @s enderchest.22 from entity @s enderchest.8
execute as @s[scores={freeslot=23}] run item replace entity @s enderchest.23 from entity @s enderchest.8
execute as @s[scores={freeslot=24}] run item replace entity @s enderchest.24 from entity @s enderchest.8
execute as @s[scores={freeslot=25}] run item replace entity @s enderchest.25 from entity @s enderchest.8

execute as @s[scores={freeslot=-1}] run tellraw @s [{"text":"Your Inventory Is Full! Item Deleted.","color":"red"}]

item replace entity @s enderchest.8 with air
tag @s remove itemtoinventory