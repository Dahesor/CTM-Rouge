data modify storage team: data set value []
clear @a
effect clear @a
execute if score game.team_count options matches 1.. run data modify storage team: data append value {team:"red",team_id:1}
execute if score game.team_count options matches 2.. run data modify storage team: data append value {team:"blue",team_id:2}
execute if score game.team_count options matches 3.. run data modify storage team: data append value {team:"yellow",team_id:3}
execute if score game.team_count options matches 4.. run data modify storage team: data append value {team:"green",team_id:4}

execute if score game.team_count options matches 1.. run data modify storage team: data[0].map set from storage ram: emptyPlMap
execute if score game.team_count options matches 2.. run data modify storage team: data[1].map set from storage ram: emptyPlMap
execute if score game.team_count options matches 3.. run data modify storage team: data[2].map set from storage ram: emptyPlMap
execute if score game.team_count options matches 4.. run data modify storage team: data[3].map set from storage ram: emptyPlMap

data modify storage team: spectate.map set from storage ram: emptyPlMap

scoreboard players set #count calculator.cr 0
function rcore:stream/start/spawn_point/pick_spawn

execute as @a unless score @s join_game matches 1.. run tp @s 60 70 60
execute as @a unless score @s join_game matches 1.. run gamemode spectator @s
scoreboard players reset * death
scoreboard players reset * revive_cd
scoreboard players set game data 1
scoreboard players set time data 0
scoreboard players set @a[scores={join_game=1..}] room -1
execute as @a[scores={join_game=1..}] run function rcore:math/mapping/team--score

function rcore:stream/start/spawn_point/spawn_players

function rcore:stream/start/gears/helmets
function rcore:stream/start/gears/boots
schedule function rcore:stream/start/gears/_startup 1s
execute as @a[scores={join_game=1..}] at @s run function rcore:player/utils/saddle_item