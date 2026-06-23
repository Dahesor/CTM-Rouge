# expected spawner count = spawner count * SPAWNER_INTEGRITY %
scoreboard players operation $expected_spawner_count calculator.cr = $spawner_count calculator.cr
scoreboard players operation $expected_spawner_count calculator.cr *= SPAWNER_INTEGRITY options
scoreboard players operation $expected_spawner_count calculator.cr /= #100 calculator.cr

# optimal spawner count = total difficulty / average difficulty
scoreboard players operation $optimal_spawner_count calculator.cr = $difficulty options
execute store result score $average_difficulty calculator.cr run data get storage reg:enemy_pool this.average_difficulty
scoreboard players operation $optimal_spawner_count calculator.cr /= $average_difficulty calculator.cr


# final count = random(expected_spawner_count, optimal_spawner_count)
scoreboard players operation $count_range calculator.cr = $optimal_spawner_count calculator.cr
scoreboard players operation $count_range calculator.cr -= $expected_spawner_count calculator.cr
execute if score $count_range calculator.cr matches ..0 run scoreboard players operation $count_range calculator.cr *= #-1 calculator.cr
scoreboard players add $count_range calculator.cr 1
execute store result score #rand calculator.cr run random value 1..999999999 gen:spawner_count
scoreboard players operation #rand calculator.cr %= $count_range calculator.cr
scoreboard players operation #final_count calculator.cr = $expected_spawner_count calculator.cr
scoreboard players operation #final_count calculator.cr < $optimal_spawner_count calculator.cr
scoreboard players operation #final_count calculator.cr += #rand calculator.cr
execute if score #final_count calculator.cr matches ..0 run scoreboard players set #final_count calculator.cr 1