execute if block ~ ~ ~ spawner run return fail

#Spawner mined

playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
execute store result score #count calculator.cr run random value 2..4 gen:emerald_drop
loot spawn ~ ~ ~ loot rcore:mech/drop_emerald

#Room Cleared Check
scoreboard players operation $this room = @s room
kill @s
execute as @e[type=marker,tag=cr.spawner,distance=..100] if score @s room = $this room run return fail

#Room Cleared
data modify storage reg:item this set from storage reg:item reg[{id:"terra_restore"}]
function reg:item/get/single_spawn_floating
particle cloud ~ ~ ~ 0.1 0.2 0.1 0.2 30 force @a
playsound entity.player.levelup master @a ~ ~ ~ 1 1.3

execute store result score #rarity calculator.cr run function rcore:core/spawner/rates_normal
function rcore:core/spawner/to_this
execute store result score #max calculator.cr run data get storage reg:shop_pool this
execute store result score #rand calculator.cr run random value 0..99999999 gen:loot_drop
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function rcore:shop/stock/__get_item with storage ram: i
function reg:item/get/single_spawn_floating