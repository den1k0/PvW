execute as @e[tag=frog] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @n[type=!player] playerid = @s playerid
execute as @e[tag=c4] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @n[type=!player] playerid = @s playerid
execute as @e[tag=portableuav] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @n[type=!player] playerid = @s playerid
execute as @e[tag=creeper] at @s on attacker if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @n[type=!player] playerid = @s playerid
execute as @e[tag=frogpiglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=frog] add frogwither
execute as @e[tag=frogpiglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=frog] remove frogpiglin
execute as @e[tag=frogwither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=frog] add frogpiglin
execute as @e[tag=frogwither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=frog] remove frogwither
execute as @e[tag=piglinportableuav] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=portableuav] add witherportableuav
execute as @e[tag=piglinportableuav] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=portableuav] remove piglinportableuav
execute as @e[tag=witherportableuav] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=portableuav] add piglinportableuav
execute as @e[tag=witherportableuav] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=portableuav] remove witherportableuav
execute as @e[tag=creeperpiglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=creeper] add creeperwither
execute as @e[tag=creeperpiglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=creeper] remove creeperpiglin
execute as @e[tag=creeperwither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=creeper] add creeperpiglin
execute as @e[tag=creeperwither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=creeper] remove creeperwither
execute as @e[tag=c4piglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe unless items entity @s inventory.* flint unless items entity @s hotbar.* flint run give @s flint[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Detonate C4","italic":false,"color":"aqua"}]]
execute as @e[tag=c4wither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe unless items entity @s inventory.* flint unless items entity @s hotbar.* flint run give @s flint[minecraft:consumable={consume_seconds:0.05,sound:'item.bundle.remove_one'},minecraft:enchantment_glint_override=true,custom_name=["",{"text":"Press RMB To Detonate C4","italic":false,"color":"aqua"}]]
execute as @e[tag=c4piglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=c4] add c4wither
execute as @e[tag=c4piglin] at @s on attacker if items entity @s[team=wither] weapon.mainhand iron_hoe run tag @n[tag=c4] remove c4piglin
execute as @e[tag=c4wither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=c4] add c4piglin
execute as @e[tag=c4wither] at @s on attacker if items entity @s[team=piglin] weapon.mainhand iron_hoe run tag @n[tag=c4] remove c4wither

execute as @e[tag=imswrenchhitpiglin] at @s as @a[distance=..5] if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @e[tag=imspart,distance=..1] playerid = @s playerid
execute as @e[tag=imswrenchhitwither] at @s as @a[distance=..5] if items entity @s weapon.mainhand iron_hoe run scoreboard players operation @e[tag=imspart,distance=..1] playerid = @s playerid
execute as @e[tag=imswrenchhitpiglin,tag=witherims] at @s run tag @e[tag=imspart,distance=..1] add piglinims
execute as @e[tag=imswrenchhitpiglin,tag=witherims] at @s run tag @e[tag=imspart,distance=..1] remove witherims
execute as @e[tag=imswrenchhitwither,tag=piglinims] at @s run tag @e[tag=imspart,distance=..1] add witherims
execute as @e[tag=imswrenchhitwither,tag=piglinims] at @s run tag @e[tag=imspart,distance=..1] remove piglinims
execute as @e[tag=imswrenchhitwither] run tag @s remove imswrenchhitwither
execute as @e[tag=imswrenchhitpiglin] run tag @s remove imswrenchhitpiglin