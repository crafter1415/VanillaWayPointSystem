execute if score @s wpsFL matches 1 run forceload remove ~ ~
scoreboard players remove @a[tag=wps_a,limit=1] wpsID 1
execute if score @s wpsSH matches 0 run tellraw @a[tag=wps_a,limit=1] {"translate":"wps.wp.remove","color":"aqua","with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"red"}]}
execute if score @s wpsSH matches 1 run tellraw @a[tag=wps_a,limit=1] {"translate":"wps.wp.remove","color":"aqua","with":[{"text":"","extra":[{"text":"["},{"selector":"@s"},{"text":"]"}],"color":"green"}]}
kill @s
execute as @a[tag=wps_a,limit=1] run function wps:waypoint/sort
execute as @a[tag=wps_a,limit=1] run function wps:waypoint/list
