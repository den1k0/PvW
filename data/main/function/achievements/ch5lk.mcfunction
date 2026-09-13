tag @s add ch5lk
playsound minecraft:ui.toast.challenge_complete music @s ~ ~ ~ 0.7 1.2 0.7
tellraw @s [{"text": "You Completed Challenge:","color": "green"},{"text": " Do 2 Legendary Kills","color": "yellow"}]
tellraw @s [{"text": "Your Reward:","color": "green"},{"text": " Calling Card [LEGEND]","color": "dark_purple"}]
tellraw @s [{"text": "+100 EXP","color": "green"}]
experience add @s 100 points