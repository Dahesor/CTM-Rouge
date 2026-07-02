scoreboard players operation $this viewing_map = @s viewing_map
execute as @a[scores={join_game=1..}] if score @s floor = $this viewing_map run tag @s add map.show

execute unless score @s viewing_map matches 1.. run data modify storage ram: thisPlMap set from storage team: spectate.map.ground
execute if score @s viewing_map matches 1 run data modify storage ram: thisPlMap set from storage team: spectate.map.upper
execute if score @s viewing_map matches 2 run data modify storage ram: thisPlMap set from storage team: spectate.map.top


function rcore:team/map/render/this
function rcore:menu/map/template
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled
function rcore:menu/map/elements/button
function rcore:menu/map/elements/title
function rcore:menu/render/dialog with storage ram: dialog
tag @a remove map.show