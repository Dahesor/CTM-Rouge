function rcore:menu/map/close
scoreboard players set @s tp.cd 2

execute unless score @s join_game matches 1.. run return 1


execute unless function rcore:menu/map/action/check_target_allowed run return run return run function rcore:menu/map/action/target_illegal

scoreboard players operation @s tp.cd = TP.CD options

tellraw @s {text:"[⏳] 正在传送，请勿移动……",color:"yellow"}
playsound block.portal.travel master @s ~ ~ ~