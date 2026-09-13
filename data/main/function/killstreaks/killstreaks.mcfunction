execute as @s[scores={killstreak=0,classslot12=1..2}] run scoreboard players set @s temp2 0
execute as @s[scores={killstreak=0,classslot12=4}] run scoreboard players set @s temp2 0

execute as @s[scores={damagedealtperlife=0,classslot12=3}] run scoreboard players set @s temp2 0
execute as @s[scores={killstreak=1,classslot11=5,classslot12=1..2}] run scoreboard players set @s temp2 0
execute as @s[scores={damagedealtperlife=150,classslot11=5,classslot12=3}] run scoreboard players set @s temp2 0

execute as @s[scores={killstreak=3..,temp2=..2,classslot12=1,3killstreak=1}] run function main:killstreaks/ksupgrade
execute as @s[scores={killstreak=3..,temp2=..2,classslot12=1,3killstreak=2}] run function main:killstreaks/kssupercrossbow
execute as @s[scores={killstreak=3..,temp2=..2,classslot12=2,3killstreak=1}] run function main:killstreaks/ksuav
execute as @s[scores={killstreak=3..,temp2=..2,classslot12=2,3killstreak=2}] run function main:killstreaks/ksloadoutdroptrap
execute as @s[scores={damagedealtperlife=400..,temp2=..2,classslot12=3,3killstreak=1}] run function main:killstreaks/ksmegabuff
execute as @s[scores={damagedealtperlife=400..,temp2=..2,classslot12=3,3killstreak=2}] run function main:killstreaks/ksuaveye

execute as @s[scores={killstreak=5,temp2=..4,classslot12=1,5killstreak=1}] run function main:killstreaks/ksairstrike
execute as @s[scores={killstreak=5,temp2=..4,classslot12=1,5killstreak=2}] run function main:killstreaks/ksims
execute as @s[scores={killstreak=5,temp2=..4,classslot12=2,5killstreak=1}] run function main:killstreaks/kspotion
execute as @s[scores={killstreak=5,temp2=..4,classslot12=2,5killstreak=2}] run function main:killstreaks/kssupplydrop
execute as @s[scores={damagedealtperlife=800..,temp2=..4,classslot12=3,5killstreak=1}] run function main:killstreaks/ksgot1perks
execute as @s[scores={damagedealtperlife=800..,temp2=..4,classslot12=3,5killstreak=2}] run function main:killstreaks/ksaura

execute as @s[scores={killstreak=7,temp2=..6,classslot12=1,7killstreak=1}] run function main:killstreaks/kstank
execute as @s[scores={killstreak=7,temp2=..6,classslot12=1,7killstreak=2}] run function main:killstreaks/ksgunship
execute as @s[scores={killstreak=7,temp2=..6,classslot12=2,7killstreak=1}] run function main:killstreaks/ksemp
execute as @s[scores={killstreak=7,temp2=..6,classslot12=2,7killstreak=2}] run function main:killstreaks/kswolves
execute as @s[scores={damagedealtperlife=1200..,temp2=..6,classslot12=3,7killstreak=1}] run function main:killstreaks/ksgot2perks
execute as @s[scores={damagedealtperlife=1200..,temp2=..6,classslot12=3,7killstreak=2}] run function main:killstreaks/ksjug

#execute as @s[scores={killstreak=7,temp2=..6,classslot12=2}] run function main:killstreaks/ksorbitalstrike

execute as @s[scores={killstreak=7..,classslot12=2}] run scoreboard players set @s killstreak 0

execute as @s[scores={killstreak=15..,temp2=..14}] run function main:killstreaks/ksnuke