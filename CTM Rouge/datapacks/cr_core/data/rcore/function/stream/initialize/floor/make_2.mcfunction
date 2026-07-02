scoreboard players set $callback calculator.cr 3
scoreboard players operation floor.base.x options = floor_2.x data
scoreboard players operation floor.base.y options = floor_2.y data
scoreboard players operation floor.base.z options = floor_2.z data

scoreboard players set room.spawn.create options 0
scoreboard players operation $difficulty options = diff.f2 options
scoreboard players set floor.level options 2

tellraw @a {text:"[DEBUG] Generating floor 3",color:"dark_gray"}
function gen:new