tag @s add wps_a
execute as @e[type=armor_stand] at @s if score @s wpsPID = @a[tag=wps_a,limit=1] wpsPID if score @s wpsSH matches 1 run function wps:waypoint/view/showparticle
tag @s remove wps_a
