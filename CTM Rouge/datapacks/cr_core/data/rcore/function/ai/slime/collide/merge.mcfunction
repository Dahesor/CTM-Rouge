scoreboard players set @s genericCD 0
execute unless score $slime.sum calculator.cr matches 1.. run scoreboard players set $slime.sum calculator.cr 1
scoreboard players operation #math.sqrt calculator.cr = $slime.sum calculator.cr
execute store result entity @s Health float 1 run scoreboard players add $slime.sum calculator.cr 400

execute store result score $size calculator.cr run function rcore:math/sqrt
execute if score $size calculator.cr matches 24.. run scoreboard players set $size calculator.cr 24
execute store result entity @s Size int 1 run scoreboard players get $size calculator.cr

data modify storage run: i set value {x:0,y:24,z:0}
execute store result storage run: i.x int 1 run scoreboard players get @s pos_x

execute store result storage run: i.z int 1 run scoreboard players get @s pos_z
function rcore:ai/slime/scatter/__tp with storage run: i
scoreboard players set $slime.sum calculator.cr 0