execute if block ~ ~ ~ spawner run return fail

## Spawner mined

scoreboard players operation $this room = @s room
scoreboard players operation @s floor = @s room
scoreboard players operation @s floor /= floor.room_count options
scoreboard players set #player_count calculator.cr 0
execute as @a[gamemode=!spectator,distance=..70,scores={join_game=1..}] if score @s room = $this room run scoreboard players add #player_count calculator.cr 1
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
execute if score @s floor matches 0 store result score #count calculator.cr run random value 2..4 gen:emerald_drop
execute if score @s floor matches 1 store result score #count calculator.cr run random value 3..7 gen:emerald_drop
execute if score @s floor matches 2 store result score #count calculator.cr run random value 6..10 gen:emerald_drop
execute if score #player_count calculator.cr matches 2.. run function rcore:core/spawner/rates/emerald_boost

loot spawn ~ ~ ~ loot rcore:mech/drop_emerald

## Room Cleared Check
scoreboard players operation $this room = @s room
scoreboard players operation #cleared_room room = $this room
kill @s
execute as @e[type=marker,tag=cr.spawner,distance=..100] if score @s room = $this room run return fail

## Room Cleared
function rcore:core/spawner/monu/gift
particle cloud ~ ~ ~ 0.1 0.2 0.1 0.2 30 force @a
playsound entity.player.levelup master @a ~ ~ ~ 1 1.3

function rcore:core/spawner/drop_loot
scoreboard players set #player_count calculator.cr 0
execute as @a[gamemode=!spectator,distance=..70,scores={join_game=1..}] if score @s room = #cleared_room room run scoreboard players add #player_count calculator.cr 1
scoreboard players remove #player_count calculator.cr 1
scoreboard players operation #player_count calculator.cr *= LOOT_DROP.PLAYER_BOOST options
execute store result score #rand calculator.cr run random value 0..100 gen:loot_extra
execute if score #rand calculator.cr < #player_count calculator.cr run function rcore:core/spawner/drop_loot

#Update info
data modify storage run: i set value {x:0,z:0}
scoreboard players operation $this floor = #cleared_room room
scoreboard players operation $this floor /= floor.room_count options
scoreboard players operation #x calculator.cr = #cleared_room room
scoreboard players operation #x calculator.cr %= floor.room_count options
scoreboard players operation #z calculator.cr = #x calculator.cr
execute store result storage run: i.x int 1 run scoreboard players operation #x calculator.cr %= floor.side_length options
execute store result storage run: i.z int 1 run scoreboard players operation #z calculator.cr /= floor.side_length options

execute if score $this floor matches 0 run function rcore:core/spawner/__update_done/fr0 with storage run: i
execute if score $this floor matches 1 run function rcore:core/spawner/__update_done/fr1 with storage run: i
execute if score $this floor matches 2 run function rcore:core/spawner/__update_done/fr2 with storage run: i

scoreboard players operation $this room = #cleared_room room
function rcore:team/map/build/trigger_discovery