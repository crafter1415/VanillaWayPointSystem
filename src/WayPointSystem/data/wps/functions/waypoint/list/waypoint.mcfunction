scoreboard players operation @s wpscalc = @s wpsSB
scoreboard players operation @s wpscalc /= #3 wpsNUM
scoreboard players operation @s wpsPG *= #10 wpsNUM
scoreboard players operation @s wpscalc += @s wpsPG
scoreboard players operation @s wpsPG /= #10 wpsNUM
scoreboard players operation @s wpsSB %= #3 wpsNUM
#_対象 wpscalc 操作 wpsSB
tag @s add wps_a
execute as @e[type=armor_stand] if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID if score @s wpsID = @a[tag=wps_a,limit=1] wpscalc run tag @s add wpsrunner
execute if score @s wpsSB matches 0 as @e[type=armor_stand,tag=wpsrunner] run function wps:waypoint/control/toggle
execute if score @s wpsSB matches 1 as @e[type=armor_stand,tag=wpsrunner] run function wps:waypoint/control/teleport
execute if score @s wpsSB matches 2 as @e[type=armor_stand,tag=wpsrunner] run function wps:waypoint/control/remove
tag @e[type=armor_stand,tag=wpsrunner] remove wpsrunner
