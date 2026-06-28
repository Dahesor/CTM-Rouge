data modify storage ram: emptyPlMap.ground.grid.cells append value []
data modify storage ram: emptyPlMap.ground.compiled append value [{font:"crouge:map",text:"",shadow_color:0}]
data modify storage ram: emptyPlMap.ground.compiled append value [{font:"crouge:map",text:"*",shadow_color:0}]
scoreboard players set #x calculator.cr 0
function rcore:stream/initialize/player_map/make_x
data modify storage ram: emptyPlMap.ground.compiled[-2] append value {text:"",extra:["\n"]}
data modify storage ram: emptyPlMap.ground.compiled[-1] append value {text:"",extra:["\n"]}

scoreboard players add #z calculator.cr 1
execute if score #z calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/make_z