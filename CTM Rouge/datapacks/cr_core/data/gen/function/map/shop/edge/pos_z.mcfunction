scoreboard players operation #test calculator.cr = #z calculator.cr
scoreboard players add #test calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run scoreboard players add #edge calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run function gen:map/__/open_edge/pos_z