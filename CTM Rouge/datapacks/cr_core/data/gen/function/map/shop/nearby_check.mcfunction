function gen:map/shop/__nearby_check with storage run: i

execute if data storage ram: map_cell.connections

scoreboard players set #edge calculator.cr 0
execute if data storage ram: map_cell.connections{pos_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage ram: map_cell.connections{neg_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage ram: map_cell.connections{pos_x:true} run scoreboard players add #edge calculator.cr 1
execute if data storage ram: map_cell.connections{neg_x:true} run scoreboard players add #edge calculator.cr 1

execute if score #x calculator.cr matches 0 run scoreboard players remove #edge calculator.cr 1

execute if score #edge calculator.cr matches 4.. run return fail
return 1