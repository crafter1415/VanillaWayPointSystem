tp @a[tag=wps_a,limit=1] @s
execute if score @s wpsSH matches 0 run tellraw @a[tag=wps_a,limit=1] ["",{"translate":"wps.wp.teleport","color":"aqua","bold":true,"with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"red"}]}]
execute if score @s wpsSH matches 1 run tellraw @a[tag=wps_a,limit=1] ["",{"translate":"wps.wp.teleport","color":"aqua","bold":true,"with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"green"}]}]
tag @s remove wps_a
execute as @a[tag=wps_a,limit=1] run function wps:waypoint/list/listgen
