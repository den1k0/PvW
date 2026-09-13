function main:actionbar/actionbar
function main:factions/factions
function main:lobbymusic/lobbymusic

execute as @s[scores={bowuse=1..}] run function main:voiceover/equipmentvoiceover
execute as @s[scores={crossbowuse=1..}] run function main:voiceover/equipmentvoiceover
execute as @s[scores={voiceovertimer=1..}] run function main:voiceover/voiceovercooldown
execute as @s[scores={graffititimer=1..}] run function main:triggers/graffititimer