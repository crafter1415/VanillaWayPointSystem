scoreboard players operation @s wpsIDold = @s wpsID
tag @s add wps_a
scoreboard players set @s wpsID 0
execute as @e[type=armor_stand] if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID if score @s wpsID = @s wpsID run tag @s add wps_b
execute store result score @s wpsID if entity @e[type=armor_stand,tag=wps_b]
tag @e[type=armor_stand,tag=wps_b] remove wps_b
execute unless score @s wpsID = @s wpsIDold run function wps:waypoint/checkcnt/re_sort
tag @s remove wps_a
