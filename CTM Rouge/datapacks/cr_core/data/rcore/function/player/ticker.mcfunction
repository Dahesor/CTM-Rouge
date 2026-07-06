execute if score @s monitor.spawner_mined matches 1.. run function rcore:core/spawner/player_activate
execute if score @s leave_game matches 1.. run function rcore:player/left_game
execute unless score @s input matches 0 run function rcore:menu/trigger/input
execute if score @s dialog matches 1.. run function rcore:menu/mod
execute if score #loop_5 calculator.cr matches 1 if entity @s[tag=map.display] run function rcore:menu/map/specialize
execute if score @s tp.cd matches 1.. run function rcore:player/utils/tp/count

# Game
execute unless score game data matches 1.. run return fail

# Player
execute unless score @s join_game matches 1.. run return fail
execute if score @s death matches 1.. run function rcore:player/death/dead
execute if score @s revive_cd matches 1.. run return run function rcore:player/death/cd

# Alive Player
execute if score @s soul.arrow_cd matches 1.. run scoreboard players remove @s soul.arrow_cd 1
execute if entity @s[tag=in_stairs] run function rcore:core/stairs/move/check
function rcore:player/utils/location/get_pos
function rcore:player/use/bow
execute if entity @s[tag=range_wool] run function rcore:core/wool/player
execute if score #loop_5 calculator.cr matches 4 run function rcore:player/utils/soul_bind/main
execute unless score @s hpkit matches 0 run function rcore:player/use/hpkit/tick_run