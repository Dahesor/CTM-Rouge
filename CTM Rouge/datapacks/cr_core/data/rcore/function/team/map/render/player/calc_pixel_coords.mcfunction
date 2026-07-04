execute if score @s floor matches 0 run scoreboard players operation $this pos_x -= floor_0.x data
execute if score @s floor matches 0 run scoreboard players operation $this pos_z -= floor_0.z data
execute if score @s floor matches 1 run scoreboard players operation $this pos_x -= floor_1.x data
execute if score @s floor matches 1 run scoreboard players operation $this pos_z -= floor_1.z data
execute if score @s floor matches 2 run scoreboard players operation $this pos_x -= floor_2.x data
execute if score @s floor matches 2 run scoreboard players operation $this pos_z -= floor_2.z data

#> Calc Pixel Coord
# x coord
scoreboard players operation $delta pos_x = $this pos_x
scoreboard players operation $delta pos_x %= map_spacing options
function rcore:team/map/render/player/resize/x
scoreboard players operation $this pos_x /= map_spacing options
scoreboard players operation $this pos_x *= #20 calculator.cr
scoreboard players operation $this pos_x += $delta pos_x
#tellraw @a {score:{name:"$this",objective:"pos_x"}}
function rcore:team/map/render/player/get_horizontal_shift

# z coord
scoreboard players operation $delta pos_z = $this pos_z
scoreboard players operation $delta pos_z %= map_spacing options
function rcore:team/map/render/player/resize/z
scoreboard players operation $this pos_z /= map_spacing options
scoreboard players operation $this pos_z *= #18 calculator.cr
scoreboard players operation $this pos_z += $delta pos_z
function rcore:team/map/render/player/get_verticle_shift