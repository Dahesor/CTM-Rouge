data modify storage run: i set value {x:0,y:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get @s pos_x
execute store result storage run: i.y int 1 run scoreboard players get @s pos_y
execute store result storage run: i.z int 1 run scoreboard players get @s pos_z
function rcore:ai/slime/scatter/__tp with storage run: i