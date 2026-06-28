function rcore:math/team_list/self_score_rotate

tag @a add map.show

data modify storage ram: thisPlMap set from storage team: spectate.map.ground
function rcore:team/map/render/this
function rcore:menu/map/template
function rcore:menu/render/dialog with storage ram: dialog

tag @a remove map.show