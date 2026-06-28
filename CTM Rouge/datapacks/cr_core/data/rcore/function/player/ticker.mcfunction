execute if score @s monitor.spawner_mined matches 1.. run function rcore:core/spawner/player_activate
execute if score @s leave_game matches 1.. run function rcore:player/left_game
execute if score @s dialog matches 1.. run function rcore:menu/mod
execute if score #loop_5 calculator.cr matches 1 if entity @s[tag=map.display] run function rcore:menu/map/specialize
execute if score #loop_5 calculator.cr matches 1 if entity @s[gamemode=spectator] run function rcore:menu/map/specialize

# Game
execute unless score game data matches 1.. run return fail

# Player
execute unless score @s join_game matches 1.. run return fail
execute if score @s soul.arrow_cd matches 1.. run scoreboard players remove @s soul.arrow_cd 1
execute if score @s death matches 1.. run function rcore:player/death/dead
execute if score @s revive_cd matches 1.. run function rcore:player/death/cd
function rcore:player/utils/get_pos
function rcore:player/use/bow
execute if score #loop_5 calculator.cr matches 4 unless entity @s[gamemode=spectator] run function rcore:player/utils/soul_bind/main