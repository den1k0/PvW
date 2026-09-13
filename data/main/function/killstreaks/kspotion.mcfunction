give @s minecraft:lingering_potion[custom_name=["",{"text":"Support Buff Potion","italic":false}],enchantment_glint_override=true,potion_contents={custom_color:11010558,custom_effects:[{id:regeneration,amplifier:1,duration:80},{id:resistance,duration:320},{id:fire_resistance,duration:320},{id:night_vision,duration:320}]},custom_data={dontdrop:1b}]
title @s actionbar {"text":"You got SUPPORT BUFF POTION","color":"gold"}
execute at @s run playsound minecraft:music_disc.warsoundthree master @s ~ ~ ~ 0.5 1 0.5
scoreboard players set @s temp2 5