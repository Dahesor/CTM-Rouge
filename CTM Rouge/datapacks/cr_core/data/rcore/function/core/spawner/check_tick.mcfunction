execute if block ~ ~ ~ spawner run return fail

## sSpawner mined

playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
execute store result score #count calculator.cr run random value 2..4 gen:emerald_drop
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

execute store result score #rarity calculator.cr run function rcore:core/spawner/rates_normal
function rcore:core/spawner/to_this
execute store result score #max calculator.cr run data get storage reg:shop_pool this
execute store result score #rand calculator.cr run random value 0..99999999 gen:loot_drop
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function rcore:shop/stock/__get_item with storage ram: i
function reg:item/get/single_spawn_floating

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