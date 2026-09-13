tag @s add chspecial3
tag @s add skinguitaraxe
playsound minecraft:ui.toast.challenge_complete music @s ~ ~ ~ 0.7 1.2 0.7
tellraw @s [{"text": "You Completed Challenge:","color": "green"},{"text": " Get A 5 Winstreak","color": "yellow"}]
tellraw @s [{"text": "Your Reward:","color": "green"},{"text": " Stone Axe Skin [Guitar]","color": "dark_purple"}]
tellraw @s [{"text": "+200 EXP","color": "green"}]
experience add @s 200 points