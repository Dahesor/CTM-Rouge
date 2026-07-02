execute unless data storage ram: map[0] run return fail

execute store result score #staircheck calculator.cr run data get storage ram: map[0].urid
execute unless score @s room = #staircheck calculator.cr run return run function rcore:player/utils/location/_next_stairs_check

tag @s add in_stairs
execute if data storage ram: map[0].connections{floor_down:true} run tag @s add in_stairs.down
execute if data storage ram: map[0].connections{floor_up:true} run tag @s add in_stairs.up
return 1