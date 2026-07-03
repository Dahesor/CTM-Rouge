data modify storage ram: map_cell set value {type:"stairs",connections:{},stair_room:{to_floor:0,x:0,z:0}}
data modify storage ram: map_cell.stair_room.x set from storage run: i.x
data modify storage ram: map_cell.stair_room.z set from storage run: i.z
data modify storage ram: map_cell.stair_room.to_floor set from storage run: i.target
execute if data storage run: i{f0tl:true} run data modify storage ram: map_cell.stair_room.f0_time_lock set value true

execute store result score #temp calculator.cr run data get storage run: i.target
execute if score #temp calculator.cr > floor.level options run data modify storage ram: map_cell.connections.floor_up set value true
execute if score #temp calculator.cr < floor.level options run data modify storage ram: map_cell.connections.floor_down set value true

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
$data modify storage ram: stair_list append from storage map: construct.grid.cells[$(z)][$(x)]
data modify storage map: stairs append from storage ram: stair_list[-1]