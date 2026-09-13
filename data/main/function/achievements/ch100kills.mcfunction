tag @s add ch100kills
playsound minecraft:ui.toast.challenge_complete music @s ~ ~ ~ 0.7 1.2 0.7
tellraw @s [{"text": "You Completed Challenge:","color": "green"},{"text": " Do 100 Kills","color": "yellow"}]
tellraw @s [{"text": "Your Reward:","color": "green"},{"text": " Graffiti","color": "dark_purple"}]
tellraw @s [{"text": "+50 EXP","color": "green"}]
experience add @s 50 points