$execute if score @s floor matches 0 run data modify storage map: ground.tp[{urid:$(i)}].team set from storage ram: color
$execute if score @s floor matches 1 run data modify storage map: upper.tp[{urid:$(i)}].team set from storage ram: color
$execute if score @s floor matches 2 run data modify storage map: top.tp[{urid:$(i)}].team set from storage ram: color