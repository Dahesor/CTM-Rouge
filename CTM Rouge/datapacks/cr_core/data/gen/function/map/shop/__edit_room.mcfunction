data modify storage ram: map_cell set value {type:"shop",connections:{}}



data modify storage run: i set value {x:0,z:0,dir:"-"}
execute store result score #rand calculator.cr run random value 0..3 gen:shop_orientation
execute if score #rand calculator.cr matches 0 run function gen:map/shop/orientation/0
execute if score #rand calculator.cr matches 1 run function gen:map/shop/orientation/1
execute if score #rand calculator.cr matches 2 run function gen:map/shop/orientation/2
execute if score #rand calculator.cr matches 3 run function gen:map/shop/orientation/3


$data modify storage map: construct.grid.cells[$(z)][$(x)] merge from storage ram: map_cell

# Mark edges as forbidden
$data modify storage ram: map_cell set from storage map: construct.grid.cells[$(z)][$(x)]

data modify storage map: construct.shop append value {floorIdx:0,x:0,z:0,urid:-1}
execute store result storage map: construct.shop[-1].floorIdx int 1 run scoreboard players get floor.level options
$data modify storage map: construct.shop[-1].x set value $(x)
$data modify storage map: construct.shop[-1].z set value $(z)
$data modify storage map: construct.shop[-1].urid set from storage map: construct.grid.cells[$(z)][$(x)].urid

execute if data storage ram: map_cell.connections{pos_z:false} run function gen:map/shop/forbidden/pos_z
execute if data storage ram: map_cell.connections{neg_z:false} run function gen:map/shop/forbidden/neg_z
execute if data storage ram: map_cell.connections{pos_x:false} run function gen:map/shop/forbidden/pos_x
execute if data storage ram: map_cell.connections{neg_x:false} run function gen:map/shop/forbidden/neg_x