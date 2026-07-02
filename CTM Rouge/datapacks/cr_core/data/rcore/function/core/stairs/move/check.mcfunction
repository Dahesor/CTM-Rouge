#[?] assume y = 20
execute if score @s[tag=in_stairs.down] pos_y matches 50..58 run function rcore:core/stairs/move/go_down
execute if score @s[tag=in_stairs.up] pos_y matches 18..24 run function rcore:core/stairs/move/go_up
effect give @s resistance 2 10