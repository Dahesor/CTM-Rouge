#$(x) $(z)

$execute if score @s floor matches 0 run data modify storage team: cell set from storage map: ground.grid.cells[$(z)][$(x)]
$execute if score @s floor matches 1 run data modify storage team: cell set from storage map: upper.grid.cells[$(z)][$(x)]
$execute if score @s floor matches 2 run data modify storage team: cell set from storage map: top.grid.cells[$(z)][$(x)]