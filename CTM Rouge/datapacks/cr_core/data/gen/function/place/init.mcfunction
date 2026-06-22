data modify storage ram: rm set value []
data modify storage ram: rm append from storage map: construct.grid.cells[][].connections

data modify storage ram: map set value []
data modify storage ram: map append from storage map: construct.grid.cells[][]

scoreboard players set #rid calculator.cr 0
function gen:place/next