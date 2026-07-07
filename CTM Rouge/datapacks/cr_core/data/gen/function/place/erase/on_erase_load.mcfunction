fill ~-1 ~ ~-1 ~49 ~49 ~49 air strict
execute if score #rid calculator.cr = #sun_tower_rid+1 calculator.cr positioned ~ ~48 ~ run fill ~-1 ~ ~-1 ~49 ~49 ~49 air strict
execute if score #rid calculator.cr = #sun_tower_rid+1 calculator.cr positioned ~ ~48 ~ as @e[tag=game_clear,distance=..100] run function gen:place/erase/kill

execute as @e[tag=game_clear,distance=..100] run function gen:place/erase/kill
kill @e[type=item,distance=..100]
execute store result bossbar rcore:init/sub value run scoreboard players add #subvalue calculator.cr 1
schedule function gen:place/erase/erase_next 1t