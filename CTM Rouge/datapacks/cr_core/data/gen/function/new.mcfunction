
#For now, use the "all" set
data modify storage reg:structure_set this set from storage reg:structure_set reg[{id:"all"}]

# Initialize disjoint set and calculate all edges that can be connected
data modify storage ram: disjoint set value {input_1:0,input_2:0}
scoreboard players operation %room_count calculator.cr = floor.side_length options
execute store result storage ram: disjoint.input_1 int 1 run scoreboard players operation %room_count calculator.cr *= %room_count calculator.cr
function gen:disjoint/init_set
function gen:disjoint/edges/create

# Generate a map structure
function gen:map/initialize

# First build a no loop graph of the rooms
function gen:disjoint/edges/shuffle
function gen:disjoint/base/build

# Now randomly add edges to the graph
function gen:disjoint/open/open

# Special cases
function gen:map/stairs/f0/transform_test
function gen:map/uniques/f0/one_way_fall
function gen:map/uniques/f0/magenta_wool

# Place structures
function gen:place/init