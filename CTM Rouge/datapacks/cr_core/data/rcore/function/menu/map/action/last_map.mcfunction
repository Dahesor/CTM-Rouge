scoreboard players remove @s viewing_map 1
execute if score @s viewing_map matches ..-1 run scoreboard players set @s viewing_map 0
playsound ui.button.click master @s ~ ~ ~ 1 1.2 1
function rcore:menu/map/show
