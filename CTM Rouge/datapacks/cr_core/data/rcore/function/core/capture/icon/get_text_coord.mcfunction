data modify storage run: i set value {z:0,x:0}

scoreboard players operation $this floor = @s room
scoreboard players operation $this floor /= floor.room_count options

scoreboard players operation $this room = @s room
scoreboard players operation $this room %= floor.room_count options
scoreboard players operation #x calculator.cr = $this room
scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr = $this room
scoreboard players operation #z calculator.cr /= floor.side_length options

scoreboard players operation #x calculator.cr -= floor.side_length options
scoreboard players operation #x calculator.cr *= #-1 calculator.cr
scoreboard players operation #x calculator.cr *= #2 calculator.cr
scoreboard players remove #x calculator.cr 1

scoreboard players operation #z calculator.cr -= floor.side_length options
scoreboard players operation #z calculator.cr *= #-1 calculator.cr
scoreboard players remove #z calculator.cr 1
scoreboard players operation #z calculator.cr *= #2 calculator.cr

execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr