execute positioned ~ ~100 ~ summon marker run function rcore:player/utils/__get_pos
scoreboard players operation @s pos_x = $this pos_x
scoreboard players operation @s pos_y = $this pos_y
scoreboard players operation @s pos_z = $this pos_z
scoreboard players operation @s rot_xz = $this rot_xz
tag @s add in_room

execute store result score @s floor run function rcore:player/utils/_get_floor
execute if entity @s[tag=has_wool] if items entity @s armor.head *[custom_data~{item:{id:"magenta_wool"}}] run function rcore:player/utils/misc/magenta_tag

execute if score @s floor matches 0 run scoreboard players operation $this pos_x -= floor_0.x data
execute if score @s floor matches 0 run scoreboard players operation $this pos_z -= floor_0.z data
execute if score @s floor matches 1 run scoreboard players operation $this pos_x -= floor_1.x data
execute if score @s floor matches 1 run scoreboard players operation $this pos_z -= floor_1.z data
execute if score @s floor matches 2 run scoreboard players operation $this pos_x -= floor_2.x data
execute if score @s floor matches 2 run scoreboard players operation $this pos_z -= floor_2.z data

scoreboard players operation #temp pos_x = $this pos_x
scoreboard players operation #temp pos_z = $this pos_z
scoreboard players operation #temp pos_x %= map_spacing options
scoreboard players operation #temp pos_z %= map_spacing options
execute if score #temp pos_x >= ROOM_SIZE options run tag @s remove in_room
execute if score #temp pos_z >= ROOM_SIZE options run tag @s remove in_room


scoreboard players operation $this pos_x /= map_spacing options
scoreboard players operation $this pos_z /= map_spacing options
execute if score $this pos_x matches ..-1 run scoreboard players set $this pos_x 0
execute if score $this pos_z matches ..-1 run scoreboard players set $this pos_z 0
scoreboard players operation #save pos_x = $this pos_x
scoreboard players operation #save pos_z = $this pos_z

scoreboard players operation $this floor = @s floor
scoreboard players operation $this floor *= floor.room_count options
scoreboard players operation $this room = $this pos_z
scoreboard players operation $this room *= floor.side_length options
scoreboard players operation $this room += $this pos_x
scoreboard players operation $this room += $this floor

execute if score #loop_5 calculator.cr matches 3 unless entity @s[gamemode=spectator] run function rcore:team/map/render/player/update

execute unless entity @s[tag=in_room] run return 1
execute if score @s room = $this room run return 1

#Room Changed
tag @s remove player.speed_up
scoreboard players operation @s room = $this room
scoreboard players operation $this floor = @s floor
execute if entity @s[tag=sneak_with_knockres] run attribute @s spawn_reinforcements modifier remove rcore:sneak_knockres
tag @s remove sneak_with_knockres
#> Check if player got back to spawn
execute if function rcore:player/utils/condition/at_spawn run function rcore:core/score/from_items
#> Gray Wool: Check if went to other team's spawn
execute if function rcore:player/utils/condition/in_other_team_spawn run function rcore:core/score/other_spawn
function rcore:player/utils/location/stairs_check
function rcore:player/utils/location/public_tp_test

#> Check for new room discovery
function rcore:player/utils/location/room_discovery