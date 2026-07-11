execute store result score #max calculator.cr run data get storage run: list
execute store result score #rand calculator.cr run random value 0..9999999 gen:place_spawn

data modify storage ram: i set value {i:0}
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr

scoreboard players set #target calculator.cr -1
function gen:map/spawn_point/__get_location with storage ram: i

scoreboard players operation #re calculator.cr = #target calculator.cr
scoreboard players remove #re calculator.cr 1
execute if score #re calculator.cr matches -1 run scoreboard players add #re calculator.cr 8
execute store result storage ram: i.i int 1 run scoreboard players get #re calculator.cr
function gen:map/spawn_point/__remove_index with storage ram: i


scoreboard players operation #re calculator.cr = #target calculator.cr
scoreboard players add #re calculator.cr 1
execute if score #re calculator.cr matches 8.. run scoreboard players set #re calculator.cr 0
execute store result storage ram: i.i int 1 run scoreboard players get #re calculator.cr
function gen:map/spawn_point/__remove_index with storage ram: i


# Get the #x and #z of the spawn point
function gen:map/spawn_point/calc_where

data modify storage run: i set value {x:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr
function gen:map/spawn_point/__edit_room with storage run: i


# Place Next Spawn Point
scoreboard players remove #spawn_count calculator.cr 1
execute if score #spawn_count calculator.cr matches 1.. run function gen:map/spawn_point/new