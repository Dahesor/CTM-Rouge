data modify storage ram: map_cell set value {type:"spawn",connections:{}}

data modify storage run: i set value {x:0,z:0,dir:"-"}
execute unless score #x calculator.cr matches ..0 run function gen:map/__/open_edge/neg_x
execute unless score #z calculator.cr matches ..0 run function gen:map/__/open_edge/neg_z
scoreboard players operation #test calculator.cr = #x calculator.cr
scoreboard players add #test calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run function gen:map/__/open_edge/pos_x
scoreboard players operation #test calculator.cr = #z calculator.cr
scoreboard players add #test calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run function gen:map/__/open_edge/pos_z


$data modify storage map: construct.grid.cells[$(z)][$(x)] merge from storage ram: map_cell

data modify storage map: construct.spawn append value {floorIdx:0,x:0,z:0,urid:-1}
execute store result storage map: construct.spawn[-1].floorIdx int 1 run scoreboard players get #count_floor calculator.cr
$data modify storage map: construct.spawn[-1].x set value $(x)
$data modify storage map: construct.spawn[-1].z set value $(z)
$data modify storage map: construct.spawn[-1].urid set from storage map: construct.grid.cells[$(z)][$(x)].urid