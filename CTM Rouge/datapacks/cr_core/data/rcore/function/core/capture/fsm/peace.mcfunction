execute if score @s pos_z matches 1.. run function rcore:core/capture/action/reduce_capture

scoreboard players operation $this team = @s team
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..},distance=..100] if score @s team = $this team if score @s room = $this room run title @s actionbar {translate:"actionbar.tp_hint",color:"yellow"}