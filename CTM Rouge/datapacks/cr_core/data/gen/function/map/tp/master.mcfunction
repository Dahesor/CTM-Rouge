scoreboard players set #gen_x calculator.cr 0
scoreboard players set #gen_z calculator.cr 0
scoreboard players set #try calculator.cr 3
scoreboard players operation #margin calculator.cr = room.tp.margin options
scoreboard players operation #spacing calculator.cr = room.tp.spacing options
scoreboard players operation $discard calculator.cr = room.tp.discard options

function gen:map/tp/this_grid