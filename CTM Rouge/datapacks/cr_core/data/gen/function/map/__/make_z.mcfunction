data modify storage map: construct.grid.cells append value []
scoreboard players set #count_x calculator.cr 0
function gen:map/__/make_room_x

scoreboard players add #count_z calculator.cr 1
execute unless score #count_z calculator.cr >= floor.side_length options run function gen:map/__/make_z