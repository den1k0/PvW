execute as @s[scores={random=-1}] run tag @s add loadmaphottubsmini
execute as @s[scores={random=-2}] run tag @s add loadmapnightshiftmini
execute as @s[scores={random=-3}] run tag @s add loadmapcachemini

execute as @s[scores={random=1}] run tag @s add loadmapvillage
execute as @s[scores={random=2}] run tag @s add loadmaphottubs
execute as @s[scores={random=3}] run tag @s add loadmapinvasion
execute as @s[scores={random=4}] run tag @s add loadmaptower
execute as @s[scores={random=5}] run tag @s add loadmapcontrol
execute as @s[scores={random=6}] run tag @s add loadmapbridge
execute as @s[scores={random=7}] run tag @s add loadmapterminal
execute as @s[scores={random=8}] run tag @s add loadmapcrash
execute as @s[scores={random=9}] run tag @s add loadmapderail
execute as @s[scores={random=10}] run tag @s add loadmapbazaar
execute as @s[scores={random=11}] run tag @s add loadmaprocket
execute as @s[scores={random=12}] run tag @s add loadmapendshipment
execute as @s[scores={random=13}] run tag @s add loadmapmansion
execute as @s[scores={random=14}] run tag @s add loadmapvokzal
execute as @s[scores={random=15}] run tag @s add loadmapisland
execute as @s[scores={random=16}] run tag @s add loadmapprison
execute as @s[scores={random=17}] run tag @s add loadmapkarachi
execute as @s[scores={random=18}] run tag @s add loadmapnightshift
execute as @s[scores={random=19}] run tag @s add loadmapcache
#scoreboard players reset @s random
function main:mplobby/updatemap
tag @s remove launchmap