data modify storage run: _tpMapSpace append value "<"
data modify storage run: _buttonSpace.extra append value ">"

scoreboard players add #x calculator.cr 1
execute if score #x calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/tpmap_respace