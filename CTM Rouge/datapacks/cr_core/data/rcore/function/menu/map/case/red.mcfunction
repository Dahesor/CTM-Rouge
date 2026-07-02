function rcore:math/team_list/self_score_rotate

scoreboard players operation $this viewing_map = @s viewing_map
scoreboard players operation $this team = @s team
execute if score @s floor = @s viewing_map run tag @s add map.show_self
execute as @a if score @s team = $this team if score @s floor = $this viewing_map run tag @s add map.show

execute unless score @s viewing_map matches 1.. run data modify storage ram: thisPlMap set from storage team: data[0].map.ground
execute if score @s viewing_map matches 1 run data modify storage ram: thisPlMap set from storage team: data[0].map.upper
execute if score @s viewing_map matches 2 run data modify storage ram: thisPlMap set from storage team: data[0].map.top

function rcore:team/map/render/this
function rcore:menu/map/template
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled
function rcore:menu/map/elements/title
function rcore:menu/map/elements/button

function rcore:menu/render/dialog with storage ram: dialog

tag @s remove map.show_self
tag @a remove map.show