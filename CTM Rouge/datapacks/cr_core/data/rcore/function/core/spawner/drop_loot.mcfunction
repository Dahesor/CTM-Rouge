execute if score @s floor matches 0 store result score #rarity calculator.cr run function rcore:core/spawner/rates/0
execute if score @s floor matches 1 store result score #rarity calculator.cr run function rcore:core/spawner/rates/1
execute if score @s floor matches 2 store result score #rarity calculator.cr run function rcore:core/spawner/rates/2
function rcore:core/spawner/to_this
execute store result score #max calculator.cr run data get storage reg:shop_pool this
execute store result score #rand calculator.cr run random value 0..99999999 gen:loot_drop
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function rcore:shop/stock/__get_item with storage ram: i
function reg:item/get/single_spawn_floating