$data modify storage run: test set from storage team: data[0].map.ground.compiled[$(z)][$(x)]

$execute unless data storage run: {test:"n-"} if score $this floor matches 0 run data modify storage team: data[0].map.ground.compiled[$(z)][$(x)] set from storage run: icon

function rcore:math/team_list/rotate

scoreboard players remove #count calculator.cr 1
execute if score #count calculator.cr matches 1.. run function rcore:core/capture/icon/__update_team with storage run: i