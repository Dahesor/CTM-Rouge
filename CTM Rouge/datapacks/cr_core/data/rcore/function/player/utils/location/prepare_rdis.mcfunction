function rcore:math/team_list/self_score_rotate
data modify storage run: i set value {x:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #save pos_x
execute store result storage run: i.z int 1 run scoreboard players get #save pos_z
execute if score @s floor matches 0 run function rcore:team/map/read/__cell_ground with storage run: i
execute if score @s floor matches 1 run function rcore:team/map/read/__cell_upper with storage run: i
execute if score @s floor matches 2 run function rcore:team/map/read/__cell_top with storage run: i