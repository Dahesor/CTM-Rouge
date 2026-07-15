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
execute if data storage ram: map_cell{type:"room"} if score #need_blocking calculator.cr matches 1 run function gen:place/room/post/close_opening

execute if data storage ram: map_cell{type:"room"} run function gen:place/room/post/spawner
execute if data storage ram: map_cell{type:"teleporter"} run function gen:place/room/post/tp
execute if data storage ram: map_cell{type:"shop"} run function gen:place/room/post/shop/prep
execute if data storage ram: map_cell{special:"light_blue_wool"} positioned ~15.5 ~42 ~15.5 run function gen:place/room/post/wool/light_blue
execute if data storage ram: map_cell{special:"white_wool"} positioned ~15.5 ~39 ~15.5 run function gen:place/room/post/wool/white
execute if data storage ram: map_cell{special:"light_gray_wool"} positioned ~10 ~2 ~10 run function gen:place/room/post/wool/light_gray
execute if data storage ram: map_cell{special:"green_wool"} positioned ~15.5 ~6 ~15.5 run function gen:place/room/post/wool/green
execute if data storage ram: map_cell{special:"black_wool"} positioned ~15.5 ~3 ~15.5 run function gen:place/room/post/wool/black
execute if data storage ram: map_cell{special:"yellow_wool"} run function gen:place/room/post/wool/yellow
execute if data storage ram: map_cell{special:"magenta_wool"} positioned ~15.5 ~17 ~15.5 run function gen:place/room/post/wool/magenta
execute if data storage ram: map_cell{special:"gray_wool"} positioned ~15.5 ~17 ~15.5 run function gen:place/room/post/wool/gray
execute if data storage ram: map_cell{special:"orange_wool"} positioned ~15.5 ~17 ~15.5 run function gen:place/room/post/wool/orange
execute if data storage ram: map_cell{special:"purple_wool"} positioned ~15.5 ~15 ~15.5 run function gen:place/room/post/wool/purple
execute if data storage ram: map_cell{special:"brown_wool"} positioned ~10.5 ~5 ~10.5 run function gen:place/room/post/wool/brown
execute if data storage ram: map_cell{special:"cyan_wool"} positioned ~15.5 ~17 ~15.5 run function gen:place/room/post/wool/cyan
execute if data storage ram: map_cell{special:"red_wool"} positioned ~17.6 ~15 ~14.5 run function gen:place/room/post/wool/red

execute if data storage run: rm{pos_z:true} run function gen:place/room/path/up
execute if data storage run: rm{pos_x:true} run function gen:place/room/path/left


scoreboard players add #rid calculator.cr 1
execute store result bossbar rcore:init/sub value run scoreboard players add #subvalue calculator.cr 1
schedule function gen:place/next 1t