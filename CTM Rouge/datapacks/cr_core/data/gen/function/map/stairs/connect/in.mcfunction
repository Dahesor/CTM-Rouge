data modify storage ram: stack prepend value {map_cell:{}}
data modify storage ram: stack[0].map_cell set from storage ram: stair_list[0]

function gen:map/stairs/connect/__get_original with storage ram: stack[0].map_cell.meta

data modify storage ram: map_cell merge value {type:"stairs",connections:{pos_z:false,pos_x:false,neg_z:false,neg_x:false,floor_down:true},stair_room:{needs_key:false,to_floor:0,x:0,z:0}}

# stair_room
scoreboard players operation #temp calculator.cr = floor.level options
execute store result storage ram: map_cell.stair_room.to_floor int 1 run scoreboard players remove #temp calculator.cr 1
data modify storage ram: map_cell.stair_room.x set from storage ram: map_cell.meta.x
data modify storage ram: map_cell.stair_room.z set from storage ram: map_cell.meta.z

#secrect room
execute if data storage ram: stack[0].map_cell.stair_room{needs_key:true} run data remove storage ram: map_cell.stair_room
execute if data storage ram: stack[0].map_cell.stair_room{needs_key:true} run data modify storage ram: map_cell merge value {type:"special",special:"f1_secrect_exit",connections:{floor_down:false,anyconnect:true}}

#Edges
execute unless data storage ram: stack[0].map_cell.stair_room{needs_key:true} run function gen:map/stairs/connect/edges

execute unless data storage ram: stack[0].map_cell.stair_room{needs_key:true} run data modify storage map: stairs append from storage ram: map_cell
function gen:map/stairs/connect/__place_back with storage ram: stack[0].map_cell.meta

data remove storage ram: stack[0]
data remove storage ram: stair_list[0]
execute if data storage ram: stair_list[0] run function gen:map/stairs/connect/in