execute if score @s wpsSB matches 0..29 run function wps:waypoint/list/waypoint
execute if score @s wpsSB matches 30..33 run function wps:waypoint/list/page
scoreboard players reset @s wpsSB
