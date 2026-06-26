execute positioned ~ ~100 ~ summon marker run function rcore:player/utils/__get_pos
scoreboard players operation @s pos_x = $this pos_x
scoreboard players operation @s pos_z = $this pos_z


#We must handle different floor positions later
scoreboard players operation $this pos_x -= floor_1.x data
scoreboard players operation $this pos_z -= floor_1.z data
scoreboard players operation $this pos_x /= map_spacing options
scoreboard players operation $this pos_z /= map_spacing options

scoreboard players operation $this room = $this pos_z
scoreboard players operation $this room *= floor.side_length options
scoreboard players operation $this room += $this pos_x

execute if score @s room = $this room run return 1

#Room Changed
scoreboard players operation @s room = $this room
#> Check if player got back to spawn
execute if function rcore:player/utils/condition/at_spawn run function rcore:core/score/gain/from_items