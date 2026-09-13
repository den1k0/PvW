execute as @s[tag=!ch100kills] if score @s allkills matches 100.. run function main:achievements/ch100kills
execute as @s[tag=!ch250kills] if score @s allkills matches 250.. run function main:achievements/ch250kills
execute as @s[tag=!ch1000kills] if score @s allkills matches 1000.. run function main:achievements/ch1000kills

execute as @s[tag=!ch25hs] if score @s headshotcount matches 25.. run function main:achievements/ch25hs
execute as @s[tag=!ch75hs] if score @s headshotcount matches 75.. run function main:achievements/ch75hs
execute as @s[tag=!ch250hs] if score @s headshotcount matches 250.. run function main:achievements/ch250hs

execute as @s[tag=!ch5ts] if score @s 360count matches 5.. run function main:achievements/ch5ts
execute as @s[tag=!ch15ts] if score @s 360count matches 15.. run function main:achievements/ch15ts
execute as @s[tag=!ch50ts] if score @s 360count matches 50.. run function main:achievements/ch50ts

execute as @s[tag=!ch2lk] if score @s legendarykillcount matches 2.. run function main:achievements/ch2lk
execute as @s[tag=!ch5lk] if score @s legendarykillcount matches 5.. run function main:achievements/ch5lk
execute as @s[tag=!ch20lk] if score @s legendarykillcount matches 20.. run function main:achievements/ch20lk

execute as @s[tag=!chprestige1] if score @s prestige matches 1.. run function main:achievements/chprestige1
execute as @s[tag=!chprestige2] if score @s prestige matches 2.. run function main:achievements/chprestige2
execute as @s[tag=!chprestige5] if score @s prestige matches 5.. run function main:achievements/chprestige5

execute as @s[tag=!ch25ak] if score @s airkillcount matches 25.. run function main:achievements/ch25ak
execute as @s[tag=!ch75ak] if score @s airkillcount matches 75.. run function main:achievements/ch75ak
execute as @s[tag=!ch250ak] if score @s airkillcount matches 250.. run function main:achievements/ch250ak

execute as @s[tag=!chspecial1] if items entity @s enderchest.25 * run function main:achievements/chspecial1
execute as @s[tag=!chspecial2,tag=nuke] run function main:achievements/chspecial2
execute as @s[tag=!chspecial3] if score @s winstreak matches 5.. run function main:achievements/chspecial3