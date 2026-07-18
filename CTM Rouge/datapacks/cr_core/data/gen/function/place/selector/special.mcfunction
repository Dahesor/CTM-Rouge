scoreboard players set #edge calculator.cr 0
execute if data storage run: rm{pos_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{pos_x:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_x:true} run scoreboard players add #edge calculator.cr 1

execute if data storage ram: map_cell{special:"f1_secrect_exit"} run return run data modify storage ram: struct_res.res set value "path:stairs/1_2.secret_exit"
execute if data storage ram: map_cell{special:"light_blue_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/light_blue"
execute if data storage ram: map_cell{special:"white_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/white"
execute if data storage ram: map_cell{special:"light_gray_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/light_gray"
execute if data storage ram: map_cell{special:"f0_fall_exit"} run return run data modify storage ram: struct_res.res set value "path:stairs/2_1_exit"
execute if data storage ram: map_cell{special:"green_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/green"
execute if data storage ram: map_cell{special:"black_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/black"
execute if data storage ram: map_cell{special:"yellow_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/yellow_1"
execute if data storage ram: map_cell{special:"magenta_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/magenta"
execute if data storage ram: map_cell{special:"gray_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/gray"
execute if data storage ram: map_cell{special:"orange_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/orange"
execute if data storage ram: map_cell{special:"purple_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/purple"
execute if data storage ram: map_cell{special:"brown_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/brown"
execute if data storage ram: map_cell{special:"cyan_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/cyan"
execute if data storage ram: map_cell{special:"red_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/red"
execute if data storage ram: map_cell{special:"blue_wool"} run return run data modify storage ram: struct_res.res set value "special:wool/blue"
