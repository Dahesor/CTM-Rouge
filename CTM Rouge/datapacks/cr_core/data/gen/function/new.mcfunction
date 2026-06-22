function gen:random/seqs

data modify storage ram: disjoint set value {input_1:0,input_2:0}

scoreboard players operation %room_count calculator.cr = floor.side_length options
execute store result storage ram: disjoint.input_1 int 1 run scoreboard players operation %room_count calculator.cr *= %room_count calculator.cr

# Initialize disjoint set and create all edges that can be connected
function gen:disjoint/init_set
function gen:disjoint/edges/create

function gen:map/initialize

function gen:disjoint/edges/shuffle
function gen:disjoint/base/build
function gen:disjoint/open/open

function gen:test/sample_rooms
function gen:place/init