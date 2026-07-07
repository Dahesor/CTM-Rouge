## Randomly select a room
# we might generalize this later to be a function
data modify storage ram: map set value []
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:true,pos_z:true,neg_x:false,neg_z:false},type:"room"}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:true,neg_x:true,neg_z:false},type:"room"}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:false,neg_x:true,neg_z:true},type:"room"}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:true,pos_z:false,neg_x:false,neg_z:true},type:"room"}]


execute store result score #rand calculator.cr run random value 1..2147483647 gen:unique_location
execute store result score #max calculator.cr run data get storage ram: map
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr

function gen:map/uniques/__/mapcell_from_map with storage ram: i

data modify storage ram: map_cell merge value {type:"special",special:"magenta_wool"}
data modify storage map: wools append from storage ram: map_cell

function gen:map/uniques/__/edit_back with storage ram: map_cell.meta