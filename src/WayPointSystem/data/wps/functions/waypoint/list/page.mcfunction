scoreboard players operation @s wpscalc = @s wpsID
scoreboard players operation @s wpscalc /= #10 wpsNUM
execute if score @s wpsSB matches 30 run scoreboard players set @s wpsPG 0
execute if score @s wpsSB matches 31 run scoreboard players remove @s wpsPG 1
execute if score @s wpsSB matches 32 run scoreboard players add @s wpsPG 1
execute if score @s wpsSB matches 33 run scoreboard players operation @s wpsPG = @s wpscalc
scoreboard players reset @s wpscalc
function wps:waypoint/list/listgen
