execute store result storage ram: i.i int 1 run scoreboard players add #trigger calculator.cr 1
function rcore:stream/initialize/player_map/__insert_trigger with storage ram: i


scoreboard players add #x calculator.cr 1
execute if score #x calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/make_trigger