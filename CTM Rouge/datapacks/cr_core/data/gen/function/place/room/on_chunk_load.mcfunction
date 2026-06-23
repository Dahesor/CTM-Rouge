data modify storage ram: place set value {rotation:"none",mirror:"none",id:"fossil/skull_3",x:0,y:0,z:0}

data modify storage ram: place.id set from storage ram: struct_res.res

execute if score #edge calculator.cr matches 4 run function gen:place/room/transform/4_way
execute if score #edge calculator.cr matches 3 run function gen:place/room/transform/3_way
execute if score #edge calculator.cr matches 2 run function gen:place/room/transform/2_way
execute if score #edge calculator.cr matches 1 run function gen:place/room/transform/1_way

scoreboard players operation #temp calculator.cr = ROOM_SIZE options
scoreboard players remove #temp calculator.cr 1

execute if data storage ram: place{rotation:"clockwise_90"} store result storage ram: place.x int 1 run scoreboard players get #temp calculator.cr
execute if data storage ram: place{rotation:"180"} store result storage ram: place.x int 1 run scoreboard players get #temp calculator.cr
execute if data storage ram: place{rotation:"180"} store result storage ram: place.z int 1 run scoreboard players get #temp calculator.cr
execute if data storage ram: place{rotation:"counterclockwise_90"} store result storage ram: place.z int 1 run scoreboard players get #temp calculator.cr


function gen:place/room/__place with storage ram: place

execute unless data storage ram: map_cell{type:"room"} run function gen:place/room/post/close_opening

function gen:place/room/post/spawner


execute if data storage run: rm{pos_z:true} run function gen:place/room/path/up
execute if data storage run: rm{pos_x:true} run function gen:place/room/path/left



schedule function gen:place/next 1t