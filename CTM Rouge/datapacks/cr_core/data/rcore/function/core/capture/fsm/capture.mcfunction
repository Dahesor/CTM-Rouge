scoreboard players operation $this team = @s monitor.spawner_mined
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..},distance=..100] if score @s team = $this team if score @s room = $this room run title @s actionbar {translate:"actionbar.capturing",color:"green"}
scoreboard players operation $this team = @s team
execute as @a[scores={join_game=1..},distance=..100] if score @s team = $this team if score @s room = $this room run title @s actionbar {translate:"actionbar.losing_tp",color:"red"}


execute if score @s pos_z matches 1.. unless score @s shop_session = @s monitor.spawner_mined run function rcore:core/capture/action/reduce_capture
execute unless score @s pos_z matches 1.. unless score @s shop_session = @s monitor.spawner_mined run return run scoreboard players operation @s shop_session = @s monitor.spawner_mined

execute unless score @s shop_session = @s monitor.spawner_mined run return fail

execute unless score @s pos_z matches 8.. run function rcore:core/capture/action/advance_capture

execute unless score @s pos_z matches 8.. run return fail

# For loser team
scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1.3 1
execute as @a if score @s team = $this team at @s run tellraw @s {text:"[!] 您的队伍失去了一座传送站",color:"red"}
function rcore:core/capture/action/broadcase_to_spectator

# Switch team
scoreboard players operation @s team = @s monitor.spawner_mined

scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team at @s run playsound crouge:tp.captured master @s ~ ~ ~ 1 1.3 1
execute as @a if score @s team = $this team at @s run tellraw @s {text:"[✔] 您的队伍占领了一座传送站",color:"green"}

execute at @s run function rcore:core/capture/action/fill_ball
execute at @s run tp @s ~ ~8 ~
scoreboard players set @s pos_z 0

function rcore:core/capture/action/spawn_fireworks


execute store result storage ram: i.i int 1 run scoreboard players get @s room
scoreboard players operation @s floor = @s room
scoreboard players operation @s floor /= floor.room_count options
scoreboard players operation $this team = @s team
function rcore:math/mapping/score--color
function rcore:core/capture/fsm/__update_data with storage ram: i

function rcore:core/capture/icon/new_capture