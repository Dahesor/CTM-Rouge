data modify storage team: data[0].spawn set from storage map: ground.spawn[0]
function rcore:stream/start/spawn_point/__keep_record with storage team: data[0].spawn

execute store result score $this pos_x run data get storage map: ground.spawn[0].x
execute store result score $this pos_z run data get storage map: ground.spawn[0].z
scoreboard players operation $this pos_z *= floor.side_length options

execute if score #count calculator.cr matches 0 store result score spawn.red data run scoreboard players operation $this pos_z += $this pos_x
execute if score #count calculator.cr matches 1 store result score spawn.blue data run scoreboard players operation $this pos_z += $this pos_x
execute if score #count calculator.cr matches 2 store result score spawn.yellow data run scoreboard players operation $this pos_z += $this pos_x
execute if score #count calculator.cr matches 3 store result score spawn.green data run scoreboard players operation $this pos_z += $this pos_x


data modify storage team: data append from storage team: data[0]
data modify storage map: ground.spawn append from storage map: ground.spawn[0]
data remove storage team: data[0]
data remove storage map: ground.spawn[0]


scoreboard players add #count calculator.cr 1
execute if score #count calculator.cr < game.team_count options run function rcore:stream/start/spawn_point/pick_spawn