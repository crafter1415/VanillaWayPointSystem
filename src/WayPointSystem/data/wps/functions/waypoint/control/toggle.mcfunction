scoreboard players operation @s wpsSH *= #-1 wpsNUM
scoreboard players add @s wpsSH 1
execute store result entity @s CustomNameVisible byte 1 run scoreboard players get @s wpsSH
execute if score @s wpsSH matches 0 run tellraw @a[tag=wps_a,limit=1] ["",{"translate":"wps.wp.toggle.off","color":"aqua","bold":true,"with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"red"}]}]
execute if score @s wpsSH matches 1 run tellraw @a[tag=wps_a,limit=1] ["",{"translate":"wps.wp.toggle.on","color":"aqua","bold":true,"with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"green"}]}]
execute as @a[tag=wps_a,limit=1] run function wps:waypoint/list/listgen
