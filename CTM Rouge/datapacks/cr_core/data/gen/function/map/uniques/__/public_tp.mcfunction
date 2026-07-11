## Randomly select a room
# we might generalize this later to be a function
data modify storage ram: map set value []
data modify storage ram: map append from storage map: construct.grid.cells[][{type:"room"}]
execute store result score #rand calculator.cr run random value 1..2147483647 gen:unique_location
execute store result score #max calculator.cr run data get storage ram: map
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr

function gen:map/uniques/__/mapcell_from_map with storage ram: i

data modify storage ram: map_cell merge value {type:"public_tp"}
data modify storage map: wools append from storage ram: map_cell

function gen:map/uniques/__/edit_back with storage ram: map_cell.meta

data modify storage map: construct.tp append value {floorIdx:0,x:0,z:0,urid:-1,public:true}
execute store result storage map: construct.tp[-1].floorIdx int 1 run scoreboard players get floor.level options
data modify storage map: construct.tp[-1].x set from storage ram: map_cell.meta.x
data modify storage map: construct.tp[-1].z set from storage ram: map_cell.meta.z
data modify storage map: construct.tp[-1].urid set from storage ram: map_cell.urid