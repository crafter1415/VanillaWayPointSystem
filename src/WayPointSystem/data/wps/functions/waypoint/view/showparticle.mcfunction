tag @s add wps_b
execute as @a[tag=wps_a,limit=1] at @s anchored eyes facing entity @e[type=armor_stand,tag=wps_b,limit=1] feet positioned ^ ^ ^1 run particle dust 0.988 1 0.31 0.5 ~ ~ ~ 0 0 0 1 1 force @a[tag=wps_a,limit=1]
tag @s remove wps_b
