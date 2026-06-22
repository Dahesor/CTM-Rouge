scoreboard players remove #try calculator.cr 1

# Calculate the number of possible locations for the room
scoreboard players operation #possibility calculator.cr = #spacing calculator.cr
scoreboard players operation #possibility calculator.cr -= #margin calculator.cr
scoreboard players operation #allowed_length calculator.cr = #possibility calculator.cr
scoreboard players operation #possibility calculator.cr *= #possibility calculator.cr

# Select a random location among the possible ones
execute store result score #rand calculator.cr run random value 0..99999999 gen:random_spread
scoreboard players operation #rand calculator.cr %= #possibility calculator.cr

# Get the x and z coordinates of the selected location
scoreboard players operation #x calculator.cr = #gen_x calculator.cr
scoreboard players operation #z calculator.cr = #gen_z calculator.cr
scoreboard players add #x calculator.cr 1
scoreboard players add #z calculator.cr 1
scoreboard players operation #temp calculator.cr = #rand calculator.cr
scoreboard players operation #temp calculator.cr /= #allowed_length calculator.cr
scoreboard players operation #z calculator.cr += #temp calculator.cr
scoreboard players operation #temp calculator.cr = #rand calculator.cr
scoreboard players operation #temp calculator.cr %= #allowed_length calculator.cr
scoreboard players operation #x calculator.cr += #temp calculator.cr

# If out of bounds, fail
execute if score #x calculator.cr >= floor.side_length options run return fail
execute if score #z calculator.cr >= floor.side_length options run return fail

# Now check if the location is already taken
data modify storage run: i set value {x:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr
execute store result score #temp calculator.cr run function gen:map/random_spread/__check_taken with storage run: i

# If not taken, return success
execute if score #temp calculator.cr matches 0 run return 1

# If no try left, fail
execute if score #try calculator.cr matches ..0 run return fail

# Else, try again
return run function gen:map/random_spread/start