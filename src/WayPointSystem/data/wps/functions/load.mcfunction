#define score_holder $Global いつもの
scoreboard objectives add wpsPID dummy
execute unless score $Global wpsPID = $Global wpsPID run scoreboard players set $Global wpsPID 0
scoreboard objectives add wpsID dummy
scoreboard objectives add wpsIDold dummy
scoreboard objectives add wpsSH dummy
scoreboard objectives add wpsSB dummy
scoreboard objectives add wpsPG dummy
scoreboard objectives add wps_UUID2 dummy
scoreboard objectives add wps_UUID3 dummy
scoreboard objectives add wpscalc dummy
scoreboard objectives add wpsNUM dummy
scoreboard players set #10 wpsNUM 10
scoreboard players set #3 wpsNUM 3
scoreboard players set #-1 wpsNUM -1
scoreboard objectives add wpsFL dummy
schedule function wps:waypoint/checkcnt/base 1s replace
tellraw @a {"translate":"wps.reload","color":"gray","italic":true}

#SH=Show/Hide
#PG=Page
#SB=SelectedButton