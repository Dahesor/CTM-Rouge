execute unless data storage ram: map[0] run return fail

execute store result score #staircheck calculator.cr run data get storage ram: map[0].urid
execute unless score @s room = #staircheck calculator.cr run return run function rcore:player/utils/location/_next_stairs_check

tag @s add in_stairs
execute if data storage ram: map[0].connections{floor_down:true} run tag @s add in_stairs.down
execute if data storage ram: map[0].connections{floor_up:true} run tag @s add in_stairs.up
execute unless score stair.0_1.open data matches 1.. if data storage ram: map[0].stair_room{f0_time_lock:true} run tag @s add in_stairs.up.locked
execute unless score stair.1_2.open data matches 1.. if data storage ram: map[0].stair_room{to_floor:2} run tag @s add in_stairs.up.locked
execute if data storage ram: map[0].stair_room{to_floor:1,needs_key:true} run tag @s add in_stairs.0secrect
execute if data storage ram: map[0].stair_room{to_floor:0,1_0_one_way:true} run tag @s add in_stairs.1oneway
return 1