execute unless score @s join_game matches 1.. run return run function rcore:menu/map/case/spectate
execute if score @s team matches 1 run return run function rcore:menu/map/case/red
execute if score @s team matches 2 run return run function rcore:menu/map/case/red
execute if score @s team matches 3 run return run function rcore:menu/map/case/red
execute if score @s team matches 4 run return run function rcore:menu/map/case/red
tag @s remove map.display