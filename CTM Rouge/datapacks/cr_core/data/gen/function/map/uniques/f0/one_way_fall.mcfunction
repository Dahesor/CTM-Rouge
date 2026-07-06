execute unless score floor.level options matches 0 run return 1

data modify storage ram: map set value []
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:true,pos_z:false,neg_x:true,neg_z:false},type:"room"}]
data modify storage ram: map append from storage map: construct.grid.cells[][{connections:{pos_x:false,pos_z:true,neg_x:false,neg_z:true},type:"room"}]

execute store result score #max calculator.cr run data get storage ram: map
execute unless score #max calculator.cr matches 1.. run return fail
execute store result score #rand calculator.cr run random value 0..99999999 gen:stair_location
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function gen:map/stairs/f0/__get_cell with storage ram: i

data modify storage ram: map_cell merge value {type:"special",special:"f0_fall_exit"}
data modify storage ram: stair_list append from storage ram: map_cell

function gen:map/stairs/f0/__edit_cell with storage ram: map_cell.meta