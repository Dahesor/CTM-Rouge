scoreboard players operation #gen_x calculator.cr += room.tp.spacing options
execute if score #gen_x calculator.cr >= floor.side_length options run scoreboard players operation #gen_z calculator.cr += room.tp.spacing options
execute if score #gen_x calculator.cr >= floor.side_length options if score #gen_z calculator.cr >= floor.side_length options run return 1
execute if score #gen_x calculator.cr >= floor.side_length options run scoreboard players set #gen_x calculator.cr 0

function gen:map/tp/this_grid