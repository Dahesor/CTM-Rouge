fill ~-1 ~ ~-1 ~49 ~49 ~49 air strict
kill @e[tag=game_clear,distance=..100]
kill @e[type=item,distance=..100]
execute store result bossbar rcore:init/sub value run scoreboard players add #subvalue calculator.cr 1
schedule function gen:place/erase/erase_next 1t