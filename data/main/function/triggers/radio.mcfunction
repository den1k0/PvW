execute as @s[gamemode=spectator] run scoreboard players set @s radio -1
execute at @s as @e[tag=radiotext] if score @s playerid = @p[gamemode=!spectator] playerid run kill @s
execute at @s if score @s radio matches 1.. run summon text_display ~ ~ ~ {Tags:["radiotext","radiojustspawned"],billboard:"vertical",alignment:"center"}
execute at @s[scores={radio=1..}] run scoreboard players operation @n[tag=radiojustspawned] playerid = @s playerid
execute at @s[scores={radio=1..}] run data modify entity @n[tag=radiojustspawned] teleport_duration set value 1
execute store result score @s[gamemode=!spectator] random run random value 1..2

execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=1},team=piglin] run playsound entity.piglin.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=2},team=piglin] run playsound entity.wandering_trader.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=3},team=piglin] run playsound entity.witch.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=1},team=piglinffa] run playsound entity.piglin.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=2},team=piglinffa] run playsound entity.wandering_trader.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,piglinteamfaction=3},team=piglinffa] run playsound entity.witch.ambient master @a ~ ~ ~ 0.5 1 0

execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=1},team=wither] run playsound entity.wither_skeleton.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=2},team=wither] run playsound entity.stray.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=3},team=wither] run playsound entity.bogged.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=1},team=witherffa] run playsound entity.wither_skeleton.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=2},team=witherffa] run playsound entity.stray.ambient master @a ~ ~ ~ 0.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..,witherteamfaction=3},team=witherffa] run playsound entity.bogged.ambient master @a ~ ~ ~ 0.5 1 0

execute at @s[scores={radio=1..2}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Forwards!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Forwards!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglingogogoone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglingogogoone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwithergogogoone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwithergogogoone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglingogogotwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglingogogotwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithergogogotwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=1..2},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithergogogotwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=3..4}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Stay Here!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Stay Here!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinstayhereone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinstayhereone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherstayhereone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherstayhereone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinstayheretwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinstayheretwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherstayheretwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=3..4},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherstayheretwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=5..6}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Nice!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Nice!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinniceone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinniceone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherniceone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherniceone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinnicetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinnicetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithernicetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=5..6},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithernicetwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=7..8}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Affirmative!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Affirmative!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinaffirmativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinaffirmativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitheraffirmativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitheraffirmativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinaffirmativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinaffirmativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitheraffirmativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=7..8},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitheraffirmativetwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=9..10}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Negative!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Negative!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinnegativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinnegativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwithernegativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwithernegativeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinnegativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinnegativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithernegativetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=9..10},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwithernegativetwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=11..12}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Help Me!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Help Me!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinhelpone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinhelpone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherhelpone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherhelpone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinhelptwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinhelptwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherhelptwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=11..12},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherhelptwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=13..14}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Enemy Spotted!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Enemy Spotted!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinenemyspottedone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinenemyspottedone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherenemyspottedone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherenemyspottedone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinenemyspottedtwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinenemyspottedtwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherenemyspottedtwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=13..14},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherenemyspottedtwo voice @a ~ ~ ~ 1.5 1 0

execute at @s[scores={radio=15..16}] run data modify entity @n[tag=radiojustspawned] text set value {"text":"Follow Me!"}
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16}] run tellraw @a[distance=..24] [{"text": "{","color": "white"},{"selector":"@s"},{"text": "}","color": "white"},{"text":" Follow Me!","color": "green"}]
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=piglin] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinfollowmeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=piglinffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwpiglinfollowmeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=wither] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherfollowmeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=witherffa] if score @s random matches 1 run playsound minecraft:music_disc.pvwwitherfollowmeone voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=piglin] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinfollowmetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=piglinffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwpiglinfollowmetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=wither] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherfollowmetwo voice @a ~ ~ ~ 1.5 1 0
execute unless score @s voiceovertimer matches 1.. at @s[scores={radio=15..16},team=witherffa] if score @s random matches 2 run playsound minecraft:music_disc.pvwwitherfollowmetwo voice @a ~ ~ ~ 1.5 1 0

execute unless score @s voiceovertimer matches 1.. run scoreboard players add @s voiceovertimer 1