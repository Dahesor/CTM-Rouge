data modify storage ram: emptyPlMap.ground.grid.cells[-1] append value {type:"void"}

data modify storage ram: emptyPlMap.ground.compiled[-2] append value "n-"
data modify storage ram: emptyPlMap.ground.compiled[-2] append value "N-"
data modify storage ram: emptyPlMap.ground.compiled[-1] append value "N+"

scoreboard players add #x calculator.cr 1
execute if score #x calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/make_x