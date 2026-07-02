scoreboard players add @s viewing_map 1
execute if score @s viewing_map matches 3.. run scoreboard players set @s viewing_map 2
playsound ui.button.click master @s ~ ~ ~ 1 1.2 1

function rcore:menu/map/show