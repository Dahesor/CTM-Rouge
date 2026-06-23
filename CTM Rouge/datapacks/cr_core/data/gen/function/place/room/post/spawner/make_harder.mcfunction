scoreboard players operation $diff_factor calculator.cr = $this_difficulty calculator.cr
scoreboard players operation $diff_factor calculator.cr *= #100 calculator.cr
scoreboard players operation $diff_factor calculator.cr /= $mob_difficulty calculator.cr
scoreboard players remove $diff_factor calculator.cr 100
scoreboard players operation $diff_factor calculator.cr /= #2 calculator.cr

# Change max time
scoreboard players operation $time_factor calculator.cr = $diff_factor calculator.cr
scoreboard players add $time_factor calculator.cr 100
execute if score $time_factor calculator.cr matches ..99 run scoreboard players set $time_factor calculator.cr 100
scoreboard players operation $use.max_time calculator.cr *= #100 calculator.cr
scoreboard players operation $use.max_time calculator.cr /= $time_factor calculator.cr
scoreboard players operation $use.max_time calculator.cr > $use.min_time calculator.cr

# Change spawn count
execute if score $diff_factor calculator.cr matches ..5 run scoreboard players set $diff_factor calculator.cr 5
scoreboard players operation $diff_factor calculator.cr /= SPAWNER_COUNT_INC_THRESHOLD options
execute if score $diff_factor calculator.cr matches 4.. run scoreboard players set $diff_factor calculator.cr 4
scoreboard players operation $use.spawn_count calculator.cr += $diff_factor calculator.cr