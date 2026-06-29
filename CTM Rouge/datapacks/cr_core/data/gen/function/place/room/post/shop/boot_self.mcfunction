tag @s remove pre.game_clear
tag @s add game_clear
tag @s add __shop_uninitialized
execute store result score @s interaction run scoreboard players add #shop_inte_UID calculator.cr 1
execute store result score @s room run data get storage ram: map_cell.urid