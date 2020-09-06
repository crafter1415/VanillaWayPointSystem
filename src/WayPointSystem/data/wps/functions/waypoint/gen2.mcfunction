#define tag wps_waypoint ウェイポイントアマスタ専用タグ。意味は怪しい
#召喚
summon armor_stand ~ ~ ~ {CustomName:"\"[WP]\"",CustomNameVisible:1b,Invisible:1b,NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["wps_waypoint","wpsInit"]}
#名前設定
data modify entity @e[type=armor_stand,tag=wpsInit,limit=1] CustomName set from entity @s Item.tag.display.Name
#座標、向きをプレイヤーに合わせる
tp @e[type=armor_stand,tag=wpsInit,limit=1] @a[tag=wps_b,limit=1]
data modify entity @e[type=armor_stand,tag=wpsInit,limit=1] Rotation set from entity @a[tag=wps_b,limit=1] Rotation
#ウェイポイント追加
scoreboard players operation @e[type=armor_stand,tag=wpsInit] wpsID = @a[tag=wps_b,limit=1] wpsID
scoreboard players add @a[tag=wps_b,limit=1] wpsID 1
scoreboard players operation @e[type=armor_stand,tag=wpsInit] wpsPID = @a[tag=wps_b,limit=1] wpsPID
scoreboard players set @e[type=armor_stand,tag=wpsInit] wpsSH 1
tellraw @a[tag=wps_b,limit=1] {"translate":"wps.wp.add","color":"aqua","bold":true,"with":[{"text":"","extra":[{"text":"["},{"selector":"@e[type=armor_stand,tag=wpsInit,limit=1]"},{"text":"]"}],"color":"yellow"}]}
#常時読み込み
#色々の都合で回避したかったがまぁ仕方ない
#補足:設定失敗時は削除時読み込み解除しない
execute as @e[type=armor_stand,tag=wpsInit,limit=1] store success score @s wpsFL run forceload add ~ ~
#EOF - End of Function
tag @e[type=armor_stand,tag=wpsInit] remove wpsInit
tag @a[tag=wps_b] remove wps_b
tag @s remove wps_a
