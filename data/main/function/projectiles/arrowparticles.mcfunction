execute at @s[tag=arrowparticlemolotov] run particle flame ~ ~ ~ 0.02 0.02 0.02 0.01 1 force
execute at @s[tag=arrowparticledrill] run particle block{block_state:"minecraft:gravel"} ~ ~ ~ 0.02 0.02 0.02 0 1 force
execute at @s[tag=arrowparticlesemtex] run particle composter ~ ~ ~ 0.05 0.05 0.05 0.01 1 force

execute at @s[tag=arrowparticlesmoke] run particle large_smoke ~ ~ ~ 0.02 0.02 0.02 0.02 1 force
execute at @s[tag=arrowparticleflash] run particle electric_spark ~ ~ ~ 0.02 0.02 0.02 0.05 1 force
execute at @s[tag=arrowparticleradar] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.01 1 force