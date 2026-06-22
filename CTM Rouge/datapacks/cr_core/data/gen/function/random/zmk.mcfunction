execute store result score seed data run data get entity @s UUID[0]
execute if score seed data matches ..-1 run scoreboard players operation seed data *= #-1 calculator.cr
kill
function gen:random/fixed