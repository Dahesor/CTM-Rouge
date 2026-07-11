tag @s add raging

scoreboard players operation $this room = @s room
scoreboard players operation $this room %= floor.room_count options
scoreboard players operation #x calculator.cr = $this room
scoreboard players operation #z calculator.cr = $this room
scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr /= floor.side_length options
scoreboard players operation #x calculator.cr *= map_spacing options
scoreboard players operation #z calculator.cr *= map_spacing options
scoreboard players operation #x calculator.cr += floor_2.x data
scoreboard players operation #z calculator.cr += floor_2.z data

data modify storage run: i set value {x: 0, y: 31, z: 0, dx: 0, dy: 31, dz: 0}
execute store result storage run: i.x int 1 run scoreboard players add #x calculator.cr 6
execute store result storage run: i.z int 1 run scoreboard players add #z calculator.cr 6
execute store result storage run: i.dx int 1 run scoreboard players add #x calculator.cr 19
execute store result storage run: i.dz int 1 run scoreboard players add #z calculator.cr 19

function rcore:ai/enderman/rage/__fill with storage run: i