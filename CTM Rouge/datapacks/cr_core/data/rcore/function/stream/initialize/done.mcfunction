data modify storage ram: emptyPlMap set value {ground:{grid:{cells:[],side_length:1},compiled:[]},upper:{grid:{cells:[],side_length:1},compiled:[]},top:{grid:{cells:[],side_length:1},compiled:[]}}

execute store result storage ram: emptyPlMap.ground.grid.side_length int 1 run scoreboard players get floor.side_length options


data modify storage ram: tpPlMap set from storage ram: emptyPlMap

#Cache tp buttons
scoreboard players set #x calculator.cr 0
data modify storage run: _tpMapSpace set value [{text:"",font:"crouge:map"}]
data modify storage run: _buttonSpace set value {text:"",extra:[]}
function rcore:stream/initialize/player_map/tpmap_respace

#Make empty map
scoreboard players set #z calculator.cr 0
scoreboard players operation #trigger calculator.cr = floor.room_count options
scoreboard players add #trigger calculator.cr 100
scoreboard players operation #trigger_1 calculator.cr = #trigger calculator.cr
scoreboard players operation #trigger_1 calculator.cr += floor.room_count options
scoreboard players operation #trigger_2 calculator.cr = #trigger calculator.cr
scoreboard players operation #trigger_2 calculator.cr += floor.room_count options
scoreboard players operation #trigger_2 calculator.cr += floor.room_count options
function rcore:stream/initialize/player_map/make_z

say init done
function rcore:stream/start/start