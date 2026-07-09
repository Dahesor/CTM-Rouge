function rcore:math/team_list/self_score_rotate

scoreboard players operation #save.gses calculator.cr = @s floor
scoreboard players set @s floor 1

function rcore:team/map/write/__single_cell with storage run: i
function rcore:team/map/build/edit_compiled

scoreboard players operation @s floor = #save.gses calculator.cr