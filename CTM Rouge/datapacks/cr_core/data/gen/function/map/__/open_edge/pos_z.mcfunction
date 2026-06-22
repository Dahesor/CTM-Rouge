# storage run: i -> {x:0,z:0,dir:"-"}

data modify storage ram: map_cell.connections.pos_z set value true
scoreboard players operation #new_idx calculator.cr = #z calculator.cr
scoreboard players add #new_idx calculator.cr 1
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #new_idx calculator.cr
data modify storage run: i.dir set value "neg_z"
function gen:map/__/open_edge/__open with storage run: i