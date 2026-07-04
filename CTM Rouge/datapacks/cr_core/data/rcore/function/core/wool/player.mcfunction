tag @s remove range_wool

execute if score #loop_20 calculator.cr matches ..9 run title @s actionbar {translate:"actionbar.wool_pickup",color:"green",with:[{keybind:"key.sneak"}]}
execute unless score #loop_20 calculator.cr matches ..9 run title @s actionbar {translate:"actionbar.wool_pickup",color:"yellow",with:[{keybind:"key.sneak"}]}


execute unless predicate rcore:player/sneaking run return run scoreboard players reset @s wool.sneak

scoreboard players add @s wool.sneak 1

function rcore:core/wool/player/music

execute if score @s wool.sneak matches 45 run function rcore:core/wool/player/pickup