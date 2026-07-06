tag @s add initialized
scoreboard players operation @s floor = @s room
scoreboard players operation @s floor /= floor.room_count options

#[?] we know that you are in floor 1
scoreboard players operation @s pos_x = @s room
scoreboard players operation @s pos_x %= floor.room_count options
scoreboard players operation @s pos_z = @s pos_x
scoreboard players operation @s pos_x %= floor.side_length options
scoreboard players operation @s pos_z /= floor.side_length options

scoreboard players operation @s pos_x *= map_spacing options
scoreboard players operation @s pos_z *= map_spacing options

scoreboard players operation @s pos_x += floor_1.x data
scoreboard players operation @s pos_z += floor_1.z data

scoreboard players add @s pos_x 15
scoreboard players set @s pos_y 36
scoreboard players add @s pos_z 15

scoreboard players set $slime.sum calculator.cr 0