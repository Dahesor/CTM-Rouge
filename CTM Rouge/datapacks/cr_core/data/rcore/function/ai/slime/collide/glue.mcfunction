execute store result score $sum calculator.cr run data get entity @s Health
execute if score $sum calculator.cr matches ..2 run return run function gen:place/erase/kill
scoreboard players operation $slime.sum calculator.cr += $sum calculator.cr
function gen:place/erase/kill