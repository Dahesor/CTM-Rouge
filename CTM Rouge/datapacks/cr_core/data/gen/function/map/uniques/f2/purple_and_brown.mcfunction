data modify storage ram: map set value []
data modify storage ram: map append from storage map: construct.grid.cells[][{type:"room"}]
execute store result score #rand calculator.cr run random value 1..2147483647 gen:unique_location
execute store result score #max calculator.cr run data get storage ram: map
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr

function gen:map/uniques/__/mapcell_from_map with storage ram: i

execute store result score #rand calculator.cr run random value 1..100 gen:wool_availability
execute if score #rand calculator.cr matches ..50 run data modify storage ram: map_cell merge value {type:"special",special:"purple_wool"}
execute if score #rand calculator.cr matches 51.. run data modify storage ram: map_cell merge value {type:"special",special:"brown_wool"}

data modify storage map: wools append from storage ram: map_cell

function gen:map/uniques/__/edit_back with storage ram: map_cell.meta