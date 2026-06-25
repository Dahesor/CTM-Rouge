data modify storage team: data[0].spawn set from storage map: ground.spawn[0]
function rcore:stream/start/spawn_point/__keep_record with storage team: data[0].spawn

data modify storage team: data append from storage team: data[0]
data modify storage map: ground.spawn append from storage map: ground.spawn[0]
data remove storage team: data[0]
data remove storage map: ground.spawn[0]


scoreboard players add #count calculator.cr 1
execute if score #count calculator.cr < game.team_count options run function rcore:stream/start/spawn_point/pick_spawn