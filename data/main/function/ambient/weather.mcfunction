weather clear
execute store result score #weather random run random value 1..48
execute if score #weather random matches 1 run weather rain
scoreboard players set #weather timer 0