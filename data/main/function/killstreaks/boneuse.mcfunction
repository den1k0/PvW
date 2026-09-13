execute at @s run summon wolf ~ ~ ~ {Tags:["wolf","wolfsummoninit","showhp"]}
execute at @s run summon wolf ~ ~ ~ {Tags:["wolf","wolfsummoninit","showhp"]}
execute at @s run summon wolf ~ ~ ~ {Tags:["wolf","wolfsummoninit","showhp"]}
execute at @s[team=piglin] run team join piglin @e[tag=wolfsummoninit,distance=..1]
execute at @s[team=wither] run team join wither @e[tag=wolfsummoninit,distance=..1]
execute at @s[team=piglin] run tag @e[tag=wolfsummoninit,distance=..1] add piglinwolf
execute at @s[team=wither] run tag @e[tag=wolfsummoninit,distance=..1] add witherwolf
execute at @s run particle poof ~ ~1 ~ 0.5 0.5 0.5 0 16 normal
execute at @s run playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 3 1 0