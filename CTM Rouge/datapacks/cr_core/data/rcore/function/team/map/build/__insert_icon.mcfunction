$execute if score @s floor matches 0 run data modify storage team: data[0].map.ground.compiled[-$(z)][-$(x)] set from storage run: icon_private
$execute if score @s floor matches 0 run data modify storage team: spectate.map.ground.compiled[-$(z)][-$(x)] set from storage run: icon

$execute if score @s floor matches 1 run data modify storage team: data[0].map.upper.compiled[-$(z)][-$(x)] set from storage run: icon_private
$execute if score @s floor matches 1 run data modify storage team: spectate.map.upper.compiled[-$(z)][-$(x)] set from storage run: icon

$execute if score @s floor matches 2 run data modify storage team: data[0].map.top.compiled[-$(z)][-$(x)] set from storage run: icon_private
$execute if score @s floor matches 2 run data modify storage team: spectate.map.top.compiled[-$(z)][-$(x)] set from storage run: icon