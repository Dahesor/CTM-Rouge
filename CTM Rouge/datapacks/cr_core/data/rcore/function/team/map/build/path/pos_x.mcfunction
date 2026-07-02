$execute if score @s floor matches 0 run data modify storage team: data[0].map.ground.compiled[-$(z)][-$(pos_x)] set value "h-"
$execute if score @s floor matches 0 run data modify storage team: spectate.map.ground.compiled[-$(z)][-$(pos_x)] set value "h-"

$execute if score @s floor matches 1 run data modify storage team: data[0].map.upper.compiled[-$(z)][-$(pos_x)] set value "h-"
$execute if score @s floor matches 1 run data modify storage team: spectate.map.upper.compiled[-$(z)][-$(pos_x)] set value "h-"

$execute if score @s floor matches 2 run data modify storage team: data[0].map.top.compiled[-$(z)][-$(pos_x)] set value "h-"
$execute if score @s floor matches 2 run data modify storage team: spectate.map.top.compiled[-$(z)][-$(pos_x)] set value "h-"