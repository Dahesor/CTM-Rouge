scoreboard players set #gen_x calculator.cr 0
scoreboard players set #gen_z calculator.cr 0
scoreboard players set #try calculator.cr 3
scoreboard players operation #margin calculator.cr = room.shop.margin options
scoreboard players operation #spacing calculator.cr = room.shop.spacing options

function gen:map/shop/this_grid