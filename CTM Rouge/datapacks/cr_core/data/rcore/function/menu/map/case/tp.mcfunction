function rcore:menu/map/close
tag @s add map.tp
execute if score @s team matches 1.. run function rcore:math/team_list/self_score_rotate

data modify storage ram: thisPlMap set from storage team: data[0].map.ground

function rcore:menu/map/case/trigger/template_tp

execute if score @s team matches 1.. unless score @s viewing_map matches 1.. run data modify storage ram: thisPlMap set from storage team: data[0].map.ground
execute unless score @s team matches 1.. unless score @s viewing_map matches 1.. run data modify storage ram: thisPlMap set from storage team: spectate.map.ground
execute if score @s team matches 1.. if score @s viewing_map matches 1 run data modify storage ram: thisPlMap set from storage team: data[0].map.upper
execute unless score @s team matches 1.. if score @s viewing_map matches 1 run data modify storage ram: thisPlMap set from storage team: spectate.map.upper
execute if score @s team matches 1.. if score @s viewing_map matches 2 run data modify storage ram: thisPlMap set from storage team: data[0].map.top
execute unless score @s team matches 1.. if score @s viewing_map matches 2 run data modify storage ram: thisPlMap set from storage team: spectate.map.top

execute unless score @s viewing_map matches 1.. run data modify storage ram: text set from storage ram: tpPlMap.ground.compiled
execute if score @s viewing_map matches 1 run data modify storage ram: text set from storage ram: tpPlMap.upper.compiled
execute if score @s viewing_map matches 2 run data modify storage ram: text set from storage ram: tpPlMap.top.compiled


data modify storage ram: dialog.dialog.body[0].contents set value [""]
data remove storage ram: dialog.dialog.body[0].contents[0]

function rcore:menu/map/case/trigger/row
scoreboard players set @s reciving 1
scoreboard players enable @s input

function rcore:menu/map/elements/button
function rcore:menu/render/dialog with storage ram: dialog