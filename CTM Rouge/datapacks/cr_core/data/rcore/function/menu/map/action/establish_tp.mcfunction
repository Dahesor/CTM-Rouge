function rcore:menu/map/close
scoreboard players set @s tp.cd 2
execute if score @s join_game matches 1.. run scoreboard players operation @s tp.cd = TP.CD options

tellraw @s {text:"[⏳] 正在传送，请勿移动……",color:"yellow"}
playsound block.portal.travel master @s ~ ~ ~