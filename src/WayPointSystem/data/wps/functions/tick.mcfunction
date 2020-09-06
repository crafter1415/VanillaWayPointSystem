execute as @a at @s as @e[type=item,distance=..3,nbt={Item:{tag:{tag:"wps:generator"}}}] at @s run function wps:waypoint/generate
execute as @a[scores={wpsSB=0..33}] at @s run function wps:waypoint/list/buttonevent
execute as @a if score @s wpscalc matches -2147483648..2147483647 run scoreboard players reset @s wpscalc
execute as @a at @s run function wps:waypoint/view/view
