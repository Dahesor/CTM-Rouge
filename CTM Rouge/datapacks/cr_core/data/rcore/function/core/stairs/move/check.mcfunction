#[?] assume y = 20

function rcore:core/stairs/actionbar/display

execute if score @s[tag=in_stairs.down] pos_y matches 50..58 run function rcore:core/stairs/move/go_down
execute if score @s[tag=in_stairs.up,tag=!in_stairs.up.locked] pos_y matches 18..24 run function rcore:core/stairs/move/go_up
execute if score @s[tag=in_stairs.up,tag=in_stairs.up.locked] pos_y matches 18..24 run effect give @s levitation 1 10 true
effect give @s resistance 2 10