tag @s add ch250ak
playsound minecraft:ui.toast.challenge_complete music @s ~ ~ ~ 0.7 1.2 0.7
tellraw @s [{"text": "You Completed Challenge:","color": "green"},{"text": " Get 250 Airborne Kills","color": "yellow"}]
tellraw @s [{"text": "Your Reward:","color": "green"},{"text": " Mace Skin [Amethyst]","color": "dark_purple"}]
tellraw @s [{"text": "+200 EXP","color": "green"}]
experience add @s 200 points