#ground floor
scoreboard players operation $this pos_x = @s pos_x
scoreboard players operation $this pos_z = @s pos_z

function rcore:team/map/render/player/calc_pixel_coords

scoreboard players operation @s map_x = $this map_x
scoreboard players operation @s map_z = $this map_z
scoreboard players operation @s map_font = $this map_font