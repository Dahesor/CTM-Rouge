execute store result score #x calculator.cr run data get storage team: cell.meta.x
execute store result score #z calculator.cr run data get storage team: cell.meta.z

data modify storage run: map set value {x:0,z:0,pos_x:0,pos_z:0,neg_x:0,neg_z:0,x_path:0}

#Get Indicies
scoreboard players operation #map_x calculator.cr = #x calculator.cr
scoreboard players add #map_x calculator.cr 1
execute store result storage run: map.x_path int 1 run scoreboard players add #map_x calculator.cr 1

scoreboard players operation #map_z calculator.cr = #z calculator.cr
scoreboard players operation #map_z calculator.cr *= #2 calculator.cr
execute store result storage run: map.z int 1 run scoreboard players add #map_z calculator.cr 2
execute store result storage run: map.pos_z int 1 run scoreboard players add #map_z calculator.cr 1
execute store result storage run: map.neg_z int 1 run scoreboard players remove #map_z calculator.cr 2


scoreboard players operation #map_x calculator.cr = #x calculator.cr
scoreboard players operation #map_x calculator.cr *= #2 calculator.cr
execute store result storage run: map.x int 1 run scoreboard players add #map_x calculator.cr 3
execute store result storage run: map.pos_x int 1 run scoreboard players add #map_x calculator.cr 1
execute store result storage run: map.neg_x int 1 run scoreboard players remove #map_x calculator.cr 2

function rcore:team/map/build/get_icon

function rcore:team/map/build/__insert_icon with storage run: map


execute if data storage team: cell.connections{pos_x:true} run function rcore:team/map/build/path/pos_x with storage run: map
execute if data storage team: cell.connections{pos_z:true} run function rcore:team/map/build/path/pos_z with storage run: map
execute if score #x calculator.cr matches 1.. if data storage team: cell.connections{neg_x:true} run function rcore:team/map/build/path/neg_x with storage run: map
execute if score #z calculator.cr matches 1.. if data storage team: cell.connections{neg_z:true} run function rcore:team/map/build/path/neg_z with storage run: map