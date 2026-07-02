execute store result storage run: i.f0 int 1 run scoreboard players remove #trigger calculator.cr 1
execute store result storage run: i.f1 int 1 run scoreboard players remove #trigger_1 calculator.cr 1
execute store result storage run: i.f2 int 1 run scoreboard players remove #trigger_2 calculator.cr 1
function rcore:stream/initialize/player_map/__insert_trigger with storage run: i


scoreboard players add #x calculator.cr 1
execute if score #x calculator.cr < floor.side_length options run function rcore:stream/initialize/player_map/make_trigger