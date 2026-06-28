function rcore:math/team_list/self_score_rotate
tag @s add map.show_self
scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team run tag @s add map.show

data modify storage ram: thisPlMap set from storage team: data[0].map.ground
function rcore:team/map/render/this
function rcore:menu/map/template
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled
function rcore:menu/render/dialog with storage ram: dialog

tag @s remove map.show_self
tag @a remove map.show