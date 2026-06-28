function rcore:team/map/render/player/show/compute_icon

execute store result storage ram: i.i int 1 run scoreboard players get @s map_z
function rcore:team/map/render/player/show/__insert_icon with storage ram: i