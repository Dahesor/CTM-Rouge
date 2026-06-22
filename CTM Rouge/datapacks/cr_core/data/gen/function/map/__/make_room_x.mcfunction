data modify storage map: construct.grid.cells[-1] append value {connections:{neg_x:false,pos_x:false,neg_z:false,pos_z:false,floor_down:false,floor_up:false},meta:{floorIdx:1,x:1,z:1},rid:-1,urid:-1,type:"room"}

execute store result storage map: construct.grid.cells[-1][-1].rid int 1 run scoreboard players get #count calculator.cr
scoreboard players add #count calculator.cr 1

execute store result storage map: construct.grid.cells[-1][-1].urid int 1 run scoreboard players add #unique_room_id data 1

execute store result storage map: construct.grid.cells[-1][-1].meta.floorIdx int 1 run scoreboard players get #count_floor calculator.cr
execute store result storage map: construct.grid.cells[-1][-1].meta.x int 1 run scoreboard players get #count_x calculator.cr
execute store result storage map: construct.grid.cells[-1][-1].meta.z int 1 run scoreboard players get #count_z calculator.cr

scoreboard players add #count_x calculator.cr 1
execute unless score #count_x calculator.cr >= floor.side_length options run function gen:map/__/make_room_x