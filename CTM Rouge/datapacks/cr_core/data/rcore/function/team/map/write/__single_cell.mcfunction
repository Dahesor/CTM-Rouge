#$(x) $(z)
#Get ground for now
$execute if score @s floor matches 0 run data modify storage team: data[0].map.ground.grid.cells[$(z)][$(x)] set from storage team: cell
$execute if score @s floor matches 1 run data modify storage team: data[0].map.upper.grid.cells[$(z)][$(x)] set from storage team: cell
$execute if score @s floor matches 2 run data modify storage team: data[0].map.top.grid.cells[$(z)][$(x)] set from storage team: cell