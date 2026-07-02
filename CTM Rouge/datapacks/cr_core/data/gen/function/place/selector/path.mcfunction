execute unless score floor.level options matches 1.. run return run data modify storage ram: struct_res.res set value "path:iron/1"
execute if score floor.level options matches 1 run return run data modify storage ram: struct_res.res set value "path:diamond/1"
execute if score floor.level options matches 2 run return run data modify storage ram: struct_res.res set value "path:netherite/1"