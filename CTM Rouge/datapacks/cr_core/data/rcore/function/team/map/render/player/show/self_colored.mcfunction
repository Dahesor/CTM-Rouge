function rcore:team/map/render/player/show/compute_icon

execute if score @s team matches 1 run data modify storage ram: text[2].color set value "red"
execute if score @s team matches 2 run data modify storage ram: text[2].color set value "blue"
execute if score @s team matches 3 run data modify storage ram: text[2].color set value "yellow"
execute if score @s team matches 4 run data modify storage ram: text[2].color set value "green"
data modify storage ram: text[2].hover_event.value.color set from storage ram: text[2].color

execute store result storage ram: i.i int 1 run scoreboard players get @s map_z
function rcore:team/map/render/player/show/__insert_icon with storage ram: i