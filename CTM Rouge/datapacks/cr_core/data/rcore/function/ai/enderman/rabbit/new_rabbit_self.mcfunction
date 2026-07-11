attribute @s safe_fall_distance base set 100
execute store result storage ram: i.i int 1 run random value 0..359 gen:trivial
function rcore:ai/slime/scatter/__rotate with storage ram: i
tag @s remove __unintialized
effect give @s fire_resistance infinite 0 true
attribute @s scale base set 0.8