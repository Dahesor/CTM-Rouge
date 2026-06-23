# storage run: i -> {x:0,z:0,dir:"-"}

data modify storage ram: map_cell.connections.neg_x set value true
scoreboard players operation #new_idx calculator.cr = #x calculator.cr
scoreboard players remove #new_idx calculator.cr 1
execute store result storage run: i.x int 1 run scoreboard players get #new_idx calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr
data modify storage run: i.dir set value "pos_x"
function gen:map/__/open_edge/__open with storage run: i

scoreboard players operation $this calculator.cr = #z calculator.cr
scoreboard players operation $this calculator.cr *= floor.side_length options
execute store result storage ram: disjoint.input_1 int 1 run scoreboard players operation $this calculator.cr += #x calculator.cr
execute store result storage ram: disjoint.input_2 int 1 run scoreboard players remove $this calculator.cr 1
function gen:disjoint/union