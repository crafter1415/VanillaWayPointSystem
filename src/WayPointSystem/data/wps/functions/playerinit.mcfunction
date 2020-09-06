function wps:waypoint/control/remove_all
scoreboard players operation @s wpsPID = $Global wpsPID
scoreboard players add $Global wpsPID 1
scoreboard players set @s wpsID 0
scoreboard players set @s wpsIDold 0
function wps:system/getuuid
tellraw @s {"translate":"wps.regist","color": "gray"}
