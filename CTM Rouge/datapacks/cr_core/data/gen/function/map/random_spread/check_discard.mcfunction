execute if score #_last_discard calculator.cr matches 1 run return run scoreboard players set #_last_discard calculator.cr 0

execute store result score #rand calculator.cr run random value 0..100 gen:room_discard
execute unless score #rand calculator.cr < $discard calculator.cr run return fail

scoreboard players set #_last_discard calculator.cr 1
return 1