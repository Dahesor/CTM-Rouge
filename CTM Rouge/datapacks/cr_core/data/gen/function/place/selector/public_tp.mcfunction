scoreboard players set #edge calculator.cr 0
execute if data storage run: rm{pos_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_z:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{pos_x:true} run scoreboard players add #edge calculator.cr 1
execute if data storage run: rm{neg_x:true} run scoreboard players add #edge calculator.cr 1
data modify storage ram: struct_res.res set value "tp:public"