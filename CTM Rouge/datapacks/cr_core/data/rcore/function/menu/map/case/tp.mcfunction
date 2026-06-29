function rcore:menu/map/close
tag @s add map.tp
execute if score @s team matches 1.. run function rcore:math/team_list/self_score_rotate

data modify storage ram: thisPlMap set from storage team: data[0].map.ground

function rcore:menu/map/case/trigger/template_tp

execute if score @s team matches 1.. run data modify storage ram: thisPlMap set from storage team: data[0].map.ground
execute unless score @s team matches 1.. run data modify storage ram: thisPlMap set from storage team: spectate.map.ground

data modify storage ram: text set from storage ram: tpPlMap.ground.compiled
data modify storage ram: dialog.dialog.body[0].contents set value [""]
data remove storage ram: dialog.dialog.body[0].contents[0]

function rcore:menu/map/case/trigger/row
scoreboard players set @s reciving 1
scoreboard players enable @s input

function rcore:menu/render/dialog with storage ram: dialog