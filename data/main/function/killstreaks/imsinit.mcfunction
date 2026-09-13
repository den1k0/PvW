execute at @s run summon block_display ~ ~ ~ {Tags:["imspart","imsinit","imsbottom"],block_state:{Name:"sticky_piston",Properties:{extended:"true",facing:"up"}}}
execute at @s run summon block_display ~ ~ ~ {Tags:["imspart","imsinit","imstop"],block_state:{Name:"piston_head",Properties:{type:"sticky",facing:"up",short:"false"}}}
execute at @s run summon block_display ~ ~0.75 ~ {Tags:["imspart","imsinit","imstnt"],block_state:{Name:"tnt"}}
execute at @s run summon interaction ~ ~ ~ {width:0.75,height:1.5,Tags:["imspart","imsinit","imsit"]}
execute at @s run scoreboard players operation @e[tag=imsinit,distance=..1] playerid = @s playerid
execute at @s run playsound block.piston.contract master @a ~ ~ ~ 1 1 0
execute at @s run particle poof ~ ~1 ~ 0.5 0.5 0.5 0 20 normal