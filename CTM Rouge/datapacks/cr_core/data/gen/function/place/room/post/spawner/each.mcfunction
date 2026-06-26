execute unless score #final_count calculator.cr matches 1.. run return fail
scoreboard players remove #final_count calculator.cr 1

# randomly select a difficulty
execute store result score #rand calculator.cr run random value 1..999999999 gen:difficulty_variance
scoreboard players operation #rand calculator.cr %= SPAWNER_DIFF_VARIANCE options
scoreboard players add #rand calculator.cr 100
scoreboard players operation #rand calculator.cr -= SPAWNER_DIFF_AMPLITUDE options
scoreboard players operation $this_difficulty calculator.cr = $average_difficulty calculator.cr
scoreboard players operation $this_difficulty calculator.cr *= #rand calculator.cr
scoreboard players operation $this_difficulty calculator.cr /= #100 calculator.cr

# selected a mob from pool
execute store result score #max calculator.cr run data get storage reg:enemy_pool this.contents
execute store result score #rand calculator.cr run random value 1..999999999 gen:mob_from_pool
scoreboard players operation #rand calculator.cr %= #max calculator.cr
execute store result storage ram: i.i int 1 run scoreboard players get #rand calculator.cr
function gen:place/room/post/spawner/__get_index with storage ram: i
function gen:place/room/post/spawner/__get_mob with storage reg:enemy_pool _

# Check difficulty and adjust if necessary
scoreboard players operation $use.min_time calculator.cr = mob.identity_min_time options
scoreboard players operation $use.max_time calculator.cr = mob.identity_max_time options
scoreboard players operation $use.spawn_count calculator.cr = mob.identity_spawn_count options
execute store result score $mob_difficulty calculator.cr run data get storage reg:mob this.difficulty
execute if score $this_difficulty calculator.cr > $mob_difficulty calculator.cr run function gen:place/room/post/spawner/make_harder

function gen:place/room/post/spawner/setup
execute store result score @s room run data get storage ram: map_cell.urid

tag @s remove __spawner.unintialized
execute if score #final_count calculator.cr matches 1.. as @e[type=marker,tag=__spawner.unintialized,limit=1,sort=random] at @s run function gen:place/room/post/spawner/each