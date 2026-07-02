scoreboard players set $callback calculator.cr 1
scoreboard players operation floor.base.x options = floor_0.x data
scoreboard players operation floor.base.y options = floor_0.y data
scoreboard players operation floor.base.z options = floor_0.z data

scoreboard players set room.spawn.create options 1
scoreboard players operation $difficulty options = diff.f0 options
scoreboard players set floor.level options 0

data modify storage ram: stair_list set value []
data modify storage map: stairs set value []

tellraw @a {text:"[DEBUG] Generating floor 1",color:"dark_gray"}
function gen:new