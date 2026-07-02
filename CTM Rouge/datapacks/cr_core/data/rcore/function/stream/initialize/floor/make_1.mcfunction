scoreboard players set $callback calculator.cr 2
scoreboard players operation floor.base.x options = floor_1.x data
scoreboard players operation floor.base.y options = floor_1.y data
scoreboard players operation floor.base.z options = floor_1.z data

scoreboard players set room.spawn.create options 0
scoreboard players operation $difficulty options = diff.f1 options
scoreboard players set floor.level options 1

tellraw @a {text:"[DEBUG] Generating floor 2",color:"dark_gray"}
function gen:new