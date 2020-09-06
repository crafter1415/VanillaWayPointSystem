scoreboard players set @s wpsID 0
execute as @e[type=armor_stand] if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID run scoreboard players reset @s wpsID
execute as @e[type=armor_stand] if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID unless score @s wpsID = @s wpsID run function wps:waypoint/checkcnt/allocate
