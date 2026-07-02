scoreboard players enable @s dialog

# Game
execute unless score game data matches 1.. run return fail

# Player
execute unless score @s join_game matches 1.. run return fail
execute if function rcore:player/utils/condition/at_spawn if entity @s[tag=in_room] run function rcore:player/utils/at_spawn


execute store result score #count calculator.cr run clear @s bread 0
execute unless score #count calculator.cr matches 10.. run give @s bread 10