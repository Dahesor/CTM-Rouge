scoreboard players reset @s leave_game
tag @s remove map.show
tag @s remove map.show_self
tag @s remove map.display
tag @s remove map.tp

execute if score @s game = $this game run return 1

scoreboard players operation @s game = $this game
function _dev:team/spectate
clear
execute if score game data matches 0 run gamemode adventure
execute if score game data matches 1.. run gamemode spectator
function rcore:player/utils/unstuck
function rcore:player/utils/saddle_item