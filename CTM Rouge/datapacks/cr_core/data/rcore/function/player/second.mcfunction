scoreboard players enable @s dialog

# Game
execute unless score game data matches 1.. run return fail

# Player
execute unless score @s join_game matches 1.. run return fail
execute if function rcore:player/utils/condition/at_spawn if entity @s[tag=in_room] run function rcore:player/utils/at_spawn
execute if entity @s[tag=in_public_tp,tag=in_room] run title @s actionbar [{text:"公共传送点: ",color:"light_purple"},{translate:"actionbar.tp_hint"}]
execute if entity @s[tag=in_public_tp,tag=in_room] run effect give @s resistance 3 10
execute if score @s wool.sneak matches 1.. unless predicate rcore:player/sneaking run scoreboard players reset @s wool.sneak