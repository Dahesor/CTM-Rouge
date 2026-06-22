$data modify storage run: state set from storage map: construct.grid.cells[$(z)][$(x)].type
tellraw @a {storage:"run:",nbt:"state"}
execute if data storage run: {state:"room"} run return 0
return 1