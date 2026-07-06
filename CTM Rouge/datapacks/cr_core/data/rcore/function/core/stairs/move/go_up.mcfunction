scoreboard players operation $this room = @s room
scoreboard players operation $this room %= floor.room_count options
scoreboard players operation #x calculator.cr = $this room
scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr = $this room
scoreboard players operation #z calculator.cr /= floor.side_length options

scoreboard players add @s floor 1
execute if score @s floor matches 3.. run scoreboard players set @s floor 2
scoreboard players operation @s viewing_map = @s floor

scoreboard players operation #x calculator.cr *= map_spacing options
scoreboard players operation #z calculator.cr *= map_spacing options
function rcore:core/stairs/move/add_base

data modify storage run: i set value {x: 0, y: 0, z: 0}

execute if entity @s[tag=in_stairs.0secrect] run scoreboard players add #x calculator.cr 2
execute if entity @s[tag=in_stairs.0secrect] run scoreboard players add #z calculator.cr 2


execute store result storage run: i.x int 1 run scoreboard players add #x calculator.cr 13
execute store result storage run: i.y int 1 run scoreboard players set #y calculator.cr 48
execute store result storage run: i.z int 1 run scoreboard players add #z calculator.cr 13

tag @s remove in_stairs
tag @s remove in_stairs.down
tag @s remove in_stairs.up
tag @s remove in_stairs.0secrect
tag @s remove in_stairs.1oneway
function rcore:core/stairs/move/__climb with storage run: i
effect give @s slow_falling 3 1