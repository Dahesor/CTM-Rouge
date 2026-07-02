tellraw @a {text:"[DEBUG] Cleanup Done",color:"dark_gray"}

function gen:params
execute unless score $clean_only options matches 1 run function rcore:stream/initialize/floor/make_0