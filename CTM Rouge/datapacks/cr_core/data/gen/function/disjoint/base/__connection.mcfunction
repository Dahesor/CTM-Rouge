$execute if score #temp calculator.cr matches 1 run data modify storage map: construct.grid.cells[$(z1)][$(x1)].connections.pos_x set value true
$execute if score #temp calculator.cr matches 1 run data modify storage map: construct.grid.cells[$(z2)][$(x2)].connections.neg_x set value true

$execute unless score #temp calculator.cr matches 1 run data modify storage map: construct.grid.cells[$(z1)][$(x1)].connections.pos_z set value true
$execute unless score #temp calculator.cr matches 1 run data modify storage map: construct.grid.cells[$(z2)][$(x2)].connections.neg_z set value true
