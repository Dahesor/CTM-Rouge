tag @s remove __unmounted
scoreboard players operation @s team = $this team

execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_z run data get entity @s Pos[2]
scoreboard players operation $this pos_x = @s pos_x
scoreboard players operation $this pos_z = @s pos_z
execute store result score @s floor run function rcore:player/utils/_get_floor
function rcore:team/map/render/player/calc_pixel_coords
scoreboard players operation @s map_x = $this map_x
scoreboard players operation @s map_z = $this map_z
scoreboard players operation @s map_font = $this map_font