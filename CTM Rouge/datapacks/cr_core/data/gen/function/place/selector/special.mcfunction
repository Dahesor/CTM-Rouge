scoreboard players set #edge calculator.cr 0
execute if data storage run: rm{pos_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{pos_x:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_x:true} run scoreboard players add #edge calculator.cr 1

execute if data storage ram: map_cell{special:"f1_secrect_exit"} run return run data modify storage ram: struct_res.res set value "path:stairs/1_2.secret_exit"