function rcore:team/count_reset
scoreboard players operation $this room = @s room
execute as @a[gamemode=!spectator,scores={team=1..},tag=in_room] if score @s room = $this room run function rcore:team/count_self

#Case: Peace since no one inside
execute unless score #total calculator.cr matches 1.. run return run function rcore:core/capture/status/peace

#Count number of teams inside
function rcore:core/capture/team_in_room
#Case: Peace since owner is the major
execute if score #team_major calculator.cr = @s team run return run function rcore:core/capture/status/peace

#Case: Contested
execute if score #team_major calculator.cr matches -1 run return run function rcore:core/capture/status/contested

#Case: Capturing
function rcore:core/capture/status/capturing