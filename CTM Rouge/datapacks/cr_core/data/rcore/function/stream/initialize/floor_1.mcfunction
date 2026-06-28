say init done
data modify storage map: ground set from storage map: construct


data modify storage ram: emptyPlMap set value {ground:{grid:{cells:[],side_length:1},compiled:[]}}
execute store result storage ram: emptyPlMap.ground.grid.side_length int 1 run scoreboard players get floor.side_length options
data modify storage ram: tpPlMap set from storage ram: emptyPlMap

scoreboard players set #x calculator.cr 0
data modify storage run: _tpMapSpace set value [{text:"",font:"crouge:map"}]
function rcore:stream/initialize/player_map/tpmap_respace

scoreboard players set #z calculator.cr 0
scoreboard players set #trigger calculator.cr 99
function rcore:stream/initialize/player_map/make_z

scoreboard players operation floor_1.x data = floor.base.x options
scoreboard players operation floor_1.y data = floor.base.y options
scoreboard players operation floor_1.z data = floor.base.z options


function rcore:stream/start/start