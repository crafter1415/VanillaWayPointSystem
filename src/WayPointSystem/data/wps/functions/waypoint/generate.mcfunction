#投げたプレイヤーを取得
#非プレイヤーの場合kill
function wps:system/getthrower
tag @s add wps_a
tag @a[distance=..3] add wps_b
execute as @a[tag=wps_b] unless score @s wps_UUID2 = @e[type=item,tag=wps_a,limit=1] wps_UUID2 run tag @s remove wps_b
execute as @a[tag=wps_b] unless score @s wps_UUID3 = @e[type=item,tag=wps_a,limit=1] wps_UUID3 run tag @s remove wps_b
#execute if えんちちが死んでも実行が続く run title @a title "おのれもやん！！！！！！！！"
#execute if えんちちが死んでも実行が続く run say もやんの糞仕様のせいで関数が増えました。あーあ
execute if entity @a[tag=wps_b] run function wps:waypoint/gen2
kill @s
