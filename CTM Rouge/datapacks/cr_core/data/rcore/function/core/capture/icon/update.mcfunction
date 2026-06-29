
function rcore:core/capture/icon/get_text_coord

#run: i -> {z:0,x:0}

function rcore:core/capture/icon/__update_spectate with storage run: i

execute store result score #count calculator.cr run data get storage team: data
execute if score #count calculator.cr matches 1.. run function rcore:core/capture/icon/__update_team with storage run: i