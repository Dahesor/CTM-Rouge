execute positioned ~ ~100 ~ summon marker run function rcore:player/utils/__get_pos
scoreboard players operation @s pos_x = $this pos_x
scoreboard players operation @s pos_z = $this pos_z
scoreboard players operation @s rot_xz = $this rot_xz


#We must handle different floor positions later
scoreboard players operation $this pos_x -= floor_1.x data
scoreboard players operation $this pos_z -= floor_1.z data
scoreboard players operation $this pos_x /= map_spacing options
scoreboard players operation $this pos_z /= map_spacing options
execute if score $this pos_x matches ..-1 run scoreboard players set $this pos_x 0
execute if score $this pos_z matches ..-1 run scoreboard players set $this pos_z 0
scoreboard players operation #save pos_x = $this pos_x
scoreboard players operation #save pos_z = $this pos_z

scoreboard players operation $this room = $this pos_z
scoreboard players operation $this room *= floor.side_length options
scoreboard players operation $this room += $this pos_x

execute if score #loop_5 calculator.cr matches 3 unless entity @s[gamemode=spectator] run function rcore:team/map/render/player/update

execute if score @s room = $this room run return 1

#Room Changed
scoreboard players operation @s room = $this room
#> Check if player got back to spawn
execute if function rcore:player/utils/condition/at_spawn run function rcore:core/score/gain/from_items

#> Check for new room discovery
function rcore:math/team_list/self_score_rotate
data modify storage run: i set value {x:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #save pos_x
execute store result storage run: i.z int 1 run scoreboard players get #save pos_z
function rcore:team/map/read/__self_map_cell with storage run: i
execute if data storage team: cell{type:"void"} run function rcore:team/map/update_from_member