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

scoreboard players add #x calculator.cr 15
scoreboard players set #y calculator.cr 37
scoreboard players add #z calculator.cr 15

data modify storage run: i set value {x: 0, y: 0, z: 0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.y int 1 run scoreboard players get #y calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr
function rcore:ai/slime/scatter/__tp with storage run: i