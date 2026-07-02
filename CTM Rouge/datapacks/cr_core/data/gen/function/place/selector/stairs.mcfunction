scoreboard players set #edge calculator.cr 4

execute store result score #target calculator.cr run data get storage ram: map_cell.stair_room.to_floor

scoreboard players set #edge calculator.cr 1
execute if score floor.level options matches 0 if data storage ram: map_cell.stair_room{needs_key:true} run return run data modify storage ram: struct_res.res set value "path:stairs/1_2.secret"
scoreboard players set #edge calculator.cr 4

execute if score floor.level options matches 0 run return run data modify storage ram: struct_res.res set value "path:stairs/1_2"

execute if score floor.level options matches 2 run return run data modify storage ram: struct_res.res set value "path:stairs/3_2"

execute if score #target calculator.cr matches 0 run return run data modify storage ram: struct_res.res set value "path:stairs/2_1"

data modify storage ram: struct_res.res set value "path:stairs/2_3"