data modify storage ram: map_cell merge value {type:"stairs",connections:{floor_down:true},stair_room:{to_floor:0,x:0,z:0,1_0_one_way:true}}

data modify storage ram: map_cell.stair_room.x set from storage ram: map_cell.meta.x
data modify storage ram: map_cell.stair_room.z set from storage ram: map_cell.meta.z
data modify storage map: stairs append from storage ram: map_cell
function gen:map/stairs/connect/__place_back with storage ram: stack[0].map_cell.meta

data remove storage ram: stack[0]
data remove storage ram: stair_list[0]
execute if data storage ram: stair_list[0] run function gen:map/stairs/connect/in