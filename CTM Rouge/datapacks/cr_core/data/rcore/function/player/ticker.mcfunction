



# Game
execute unless score game data matches 1.. run return fail
execute if score @s death matches 1.. run function rcore:player/death/dead
execute if score @s revive_cd matches 1.. run function rcore:player/death/cd