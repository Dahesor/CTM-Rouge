execute unless score floor.level options matches 0 run return run scoreboard players set $transform_deadend options 0

data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:true,pos_z:false,neg_x:false,neg_z:false}}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:true,neg_x:false,neg_z:false}}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:false,neg_x:true,neg_z:false}}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:false,neg_x:false,neg_z:true}}]

execute store result score #max calculator.cr run data get storage ram: map
execute unless score #max calculator.cr matches 1.. run return run scoreboard players set $transform_deadend options 0
execute store result score #rand calculator.cr run random value 0..99999999 gen:stair_location
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function gen:map/stairs/f0/__get_cell with storage ram: i

data modify storage ram: map_cell merge value {type:"stairs",stair_room:{needs_key:true,to_floor:1,x:0,z:0},connections:{floor_up:true}}
execute store result score #temp calculator.cr run data get storage ram: map_cell.rid
scoreboard players operation #x calculator.cr = #temp calculator.cr
execute store result storage ram: map_cell.stair_room.x int 1 run scoreboard players operation #x calculator.cr %= floor.side_length options
execute store result storage ram: map_cell.stair_room.x int 1 run scoreboard players operation #temp calculator.cr /= floor.side_length options
data modify storage ram: stair_list append from storage ram: map_cell
data modify storage map: stairs append from storage ram: map_cell
function gen:map/stairs/f0/__edit_cell with storage ram: map_cell.meta