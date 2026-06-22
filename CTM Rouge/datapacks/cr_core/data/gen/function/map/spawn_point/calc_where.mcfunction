scoreboard players operation #max_idx calculator.cr = floor.side_length options
scoreboard players remove #max_idx calculator.cr 1

# On corners
    execute if score #target calculator.cr matches 0 run scoreboard players set #x calculator.cr 0
    execute if score #target calculator.cr matches 0 run return run scoreboard players set #z calculator.cr 0

    execute if score #target calculator.cr matches 2 run scoreboard players operation #x calculator.cr = #max_idx calculator.cr
    execute if score #target calculator.cr matches 2 run return run scoreboard players set #z calculator.cr 0

    execute if score #target calculator.cr matches 4 run scoreboard players operation #x calculator.cr = #max_idx calculator.cr
    execute if score #target calculator.cr matches 4 run return run scoreboard players operation #z calculator.cr = #max_idx calculator.cr


    execute if score #target calculator.cr matches 6 run scoreboard players set #x calculator.cr 0
    execute if score #target calculator.cr matches 6 run return run scoreboard players operation #z calculator.cr = #max_idx calculator.cr
# On corners

scoreboard players operation #half_side_length calculator.cr = floor.side_length options
scoreboard players operation #half_side_length calculator.cr /= #2 calculator.cr

# On Sides
    execute if score #target calculator.cr matches 1 run scoreboard players set #z calculator.cr 0
    execute if score #target calculator.cr matches 1 run return run scoreboard players operation #x calculator.cr = #half_side_length calculator.cr

    execute if score #target calculator.cr matches 3 run scoreboard players operation #x calculator.cr = #max_idx calculator.cr
    execute if score #target calculator.cr matches 3 run return run scoreboard players operation #z calculator.cr = #half_side_length calculator.cr

    execute if score #target calculator.cr matches 5 run scoreboard players operation #z calculator.cr = #max_idx calculator.cr
    execute if score #target calculator.cr matches 5 run return run scoreboard players operation #x calculator.cr = #half_side_length calculator.cr

    execute if score #target calculator.cr matches 7 run scoreboard players set #x calculator.cr 0
    execute if score #target calculator.cr matches 7 run return run scoreboard players operation #z calculator.cr = #half_side_length calculator.cr
# On Sides