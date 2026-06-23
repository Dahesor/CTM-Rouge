$data modify storage run: state set from storage map: construct.grid.cells[$(z)][$(x)].type
execute if data storage run: {state:"room"} run return 0
return 1