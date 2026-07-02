# Append to data
    data modify storage ram: emptyPlMap.ground.grid.cells append value []
    data modify storage ram: emptyPlMap.upper.grid.cells append value []
    data modify storage ram: emptyPlMap.top.grid.cells append value []
    data modify storage ram: emptyPlMap.ground.compiled append value [{font:"crouge:map",text:"",shadow_color:0}]
    data modify storage ram: emptyPlMap.ground.compiled append value [{font:"crouge:map",text:"*",shadow_color:0}]
    data modify storage ram: emptyPlMap.upper.compiled append value [{font:"crouge:map",text:"",shadow_color:0}]
    data modify storage ram: emptyPlMap.upper.compiled append value [{font:"crouge:map",text:"*",shadow_color:0}]
    data modify storage ram: emptyPlMap.top.compiled append value [{font:"crouge:map",text:"",shadow_color:0}]
    data modify storage ram: emptyPlMap.top.compiled append value [{font:"crouge:map",text:"*",shadow_color:0}]
# Append to data

scoreboard players set #x calculator.cr 0
data modify storage run: i set value {f0:0,f1:0,f2:0}
function rcore:stream/initialize/player_map/make_x

# Add newlines
    data modify storage ram: emptyPlMap.ground.compiled[-2] append value {text:"",extra:["\n"]}
    data modify storage ram: emptyPlMap.ground.compiled[-1] append value {text:"",extra:["\n"]}
    data modify storage ram: emptyPlMap.upper.compiled[-2] append value {text:"",extra:["\n"]}
    data modify storage ram: emptyPlMap.upper.compiled[-1] append value {text:"",extra:["\n"]}
    data modify storage ram: emptyPlMap.top.compiled[-2] append value {text:"",extra:["\n"]}
    data modify storage ram: emptyPlMap.top.compiled[-1] append value {text:"",extra:["\n"]}
# Add newlines

# Copy to TP map
    data modify storage ram: tpPlMap.ground.compiled append from storage ram: emptyPlMap.ground.compiled[-2]
    data modify storage ram: tpPlMap.ground.compiled[-1][-1].extra prepend from storage run: _tpMapSpace
    data modify storage ram: tpPlMap.upper.compiled append from storage ram: emptyPlMap.ground.compiled[-2]
    data modify storage ram: tpPlMap.upper.compiled[-1][-1].extra prepend from storage run: _tpMapSpace
    data modify storage ram: tpPlMap.top.compiled append from storage ram: emptyPlMap.ground.compiled[-2]
    data modify storage ram: tpPlMap.top.compiled[-1][-1].extra prepend from storage run: _tpMapSpace
# Copy to TP map

# Insert Triggers
    scoreboard players set #x calculator.cr 0
    function rcore:stream/initialize/player_map/make_trigger
# Insert Triggers

data modify storage ram: tpPlMap.ground.compiled append from storage ram: emptyPlMap.ground.compiled[-1]
data modify storage ram: tpPlMap.upper.compiled append from storage ram: emptyPlMap.upper.compiled[-1]
data modify storage ram: tpPlMap.top.compiled append from storage ram: emptyPlMap.top.compiled[-1]

scoreboard players add #z calculator.cr 1
execute if score #z calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/make_z