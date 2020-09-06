tag @s add wps_a
execute as @e[type=armor_stand] if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID run tag @s add wpsrunner
execute as @e[type=armor_stand,tag=wpsrunner] if score @s wpsFL matches 1 run forceload remove ~ ~
kill @e[type=armor_stand,tag=wpsrunner]
tag @s remove wps_a
tellraw @s {"translate":"wps.wp.remove_all","color":"green","bold":true}
scoreboard players set @s wpsID 0
function wps:waypoint/list
