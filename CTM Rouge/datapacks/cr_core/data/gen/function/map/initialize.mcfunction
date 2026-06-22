data modify storage map: construct set value {grid:{cells:[],side_length:1},shop:[],spawn:[],tp:[]}

scoreboard players set #count_floor calculator.cr 1

execute store result storage map: construct.grid.side_length int 1 run scoreboard players get floor.side_length options

scoreboard players set #count_z calculator.cr 0
scoreboard players set #count calculator.cr 0
function gen:map/__/make_z


# Place Spawn Points
scoreboard players operation #spawn_count calculator.cr = game.spawn_count options
execute if score #spawn_count calculator.cr matches ..0 run scoreboard players set #spawn_count calculator.cr 1
execute if score #spawn_count calculator.cr matches 5.. run scoreboard players set #spawn_count calculator.cr 4
data modify storage run: list set value [0,1,2,3,4,5,6,7]
function gen:map/spawn_point/new


# Place Teleporters
function gen:map/tp/master
