# Here we generate the map for this game
# Note that the structures are not yet placed in here

data modify storage map: construct set value {grid:{cells:[],side_length:1},shop:[],spawn:[],tp:[]}

execute store result storage map: construct.grid.side_length int 1 run scoreboard players get floor.side_length options

scoreboard players set #count_z calculator.cr 0
scoreboard players set #count calculator.cr 0
function gen:map/__/make_z

# Resolve rooms reserved by last floor
execute if data storage ram: stair_list[0] run function gen:map/stairs/connect/in

# Place Spawn Points
scoreboard players operation #spawn_count calculator.cr = game.spawn_count options
execute if score #spawn_count calculator.cr matches ..0 run scoreboard players set #spawn_count calculator.cr 1
execute if score #spawn_count calculator.cr matches 5.. run scoreboard players set #spawn_count calculator.cr 4
data modify storage run: list set value [{i:0},{i:1},{i:2},{i:3},{i:4},{i:5},{i:6},{i:7}]
execute if score room.spawn.create options matches 1.. run function gen:map/spawn_point/new

# Place stairs
function gen:map/stairs/cases

# Place Teleporters
function gen:map/tp/master

# Place Shops
function gen:map/shop/master

# Place special rooms
function gen:map/uniques/distribute