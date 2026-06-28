tag @a[scores={join_game=1..}] add map.show

data modify storage ram: thisPlMap set from storage team: spectate.map.ground
function rcore:team/map/render/this
function rcore:menu/map/template
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled
function rcore:menu/render/dialog with storage ram: dialog
tag @a remove map.show