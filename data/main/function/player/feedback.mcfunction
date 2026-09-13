data modify block 0 -5 0 Items append from entity @s SelectedItem
clear @s written_book[custom_data={dontclear:1b}]
tellraw @s [{"text": "Thanks For Leaving Feedback! I Will Gladly Read It! Later... Maybe...","color": "green"}]
playsound entity.player.levelup master @s ~ ~ ~ 1 1.2 0