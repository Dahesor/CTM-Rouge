scoreboard players set #edge calculator.cr 0
execute if data storage run: rm{pos_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{pos_x:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_x:true} run scoreboard players add #edge calculator.cr 1

execute if score #edge calculator.cr matches 4 run return run function gen:place/selector/rooms/four_way
execute if score #edge calculator.cr matches 3 run return run function gen:place/selector/rooms/three_way
execute if score #edge calculator.cr matches 1 run return run function gen:place/selector/rooms/deadend


execute unless score #edge calculator.cr matches 2 run return run function gen:place/selector/error


execute if data storage run: rm{pos_z:true} if data storage run: rm{neg_z:true} run return run function gen:place/selector/rooms/straight
execute if data storage run: rm{pos_x:true} if data storage run: rm{neg_x:true} run return run function gen:place/selector/rooms/straight
function gen:place/selector/rooms/corner