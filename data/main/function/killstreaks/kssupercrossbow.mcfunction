title @s actionbar {"text":"You got SUPER CROSSBOW!","color":"gold"}
give @s crossbow[max_damage=8,minecraft:enchantments={quick_charge:3},minecraft:custom_name={"text":"Super Crossbow","italic":false}]
give @s tipped_arrow[potion_contents={custom_color:10066329,custom_effects:[{id:weakness,duration:100,amplifier:0},{id:slowness,duration:100,amplifier:0}]},custom_name=["",{"text":"Explosive Arrow","italic":false}]] 8
execute at @s run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
execute at @s run playsound minecraft:music_disc.warsoundthree master @s ~ ~ ~ 0.3 0.85 0
scoreboard players set @s temp2 3