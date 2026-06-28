execute unless score @s pos_z matches 1.. run return fail

scoreboard players remove @s pos_z 1
tp @s ~ ~1 ~
execute at @s run function rcore:core/capture/action/fill_owner_color