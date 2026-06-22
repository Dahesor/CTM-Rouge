
execute unless function gen:map/random_spread/start run return run function gen:map/tp/next_grid

data modify storage run: i set value {x:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr
function gen:map/tp/__edit_room with storage run: i
function gen:map/tp/next_grid