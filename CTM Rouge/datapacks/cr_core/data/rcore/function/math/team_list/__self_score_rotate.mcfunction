scoreboard players add #__self_score_ro calculator.cr 1
execute store result score $__that calculator.cr run data get storage team: data[0].team_id
execute if score $__that calculator.cr = @s team run return 1

data modify storage team: data append from storage team: data[0]
data remove storage team: data[0]
execute if score #__self_score_ro calculator.cr matches 6.. run return fail
return run function rcore:math/team_list/__self_score_rotate