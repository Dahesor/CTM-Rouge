execute store result score #x calculator.cr run data get storage ram: map_cell.meta.x
execute store result score #z calculator.cr run data get storage ram: map_cell.meta.z
data modify storage run: i set value {x:0,z:0,dir:"-"}
execute unless score #x calculator.cr matches ..0 run function gen:map/__/open_edge/neg_x
execute unless score #z calculator.cr matches ..0 run function gen:map/__/open_edge/neg_z
scoreboard players operation #test calculator.cr = #x calculator.cr
scoreboard players add #test calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run function gen:map/__/open_edge/pos_x
scoreboard players operation #test calculator.cr = #z calculator.cr
scoreboard players add #test calculator.cr 1
execute if score #test calculator.cr < floor.side_length options run function gen:map/__/open_edge/pos_z