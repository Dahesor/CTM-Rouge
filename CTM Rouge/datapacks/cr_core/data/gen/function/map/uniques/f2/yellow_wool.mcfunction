## Randomly select a room
# we might generalize this later to be a function

data modify storage run: i set value {x:0,z:0}
execute store result score #rand calculator.cr run random value 0..3 gen:unique_location

#Calculate where that is
scoreboard players operation #x calculator.cr = floor.side_length options
scoreboard players remove #x calculator.cr 1
scoreboard players operation #x calculator.cr /= #2 calculator.cr
scoreboard players operation #z calculator.cr = #x calculator.cr
execute if score #rand calculator.cr matches 2.. run scoreboard players add #z calculator.cr 1
execute if score #rand calculator.cr matches 1 run scoreboard players add #x calculator.cr 1
execute if score #rand calculator.cr matches 3 run scoreboard players add #x calculator.cr 1

execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr

function gen:map/uniques/__/mapcell_from_construct with storage run: i

data modify storage ram: map_cell merge value {type:"special",special:"yellow_wool"}
data modify storage map: wools append from storage ram: map_cell

execute store result score #sun_tower_rid+1 calculator.cr run data get storage ram: map_cell.rid
scoreboard players add #sun_tower_rid+1 calculator.cr 1

function gen:map/uniques/__/edit_back with storage ram: map_cell.meta