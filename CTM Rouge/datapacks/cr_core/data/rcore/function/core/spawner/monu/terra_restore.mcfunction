data modify storage reg:item this set from storage reg:item reg[{id:"terra_restore"}]
function reg:item/get/single_spawn_floating

scoreboard players operation $this floor = #cleared_room room
scoreboard players operation $this floor /= floor.room_count options

execute if score $this floor matches ..0 run return fail

execute store result score #rand calculator.cr run random value 0..99 gen:tr_drop
execute if score $this floor matches 1 if score #rand calculator.cr matches ..40 run function reg:item/get/single_spawn_floating
execute if score $this floor matches 2 if score #rand calculator.cr matches ..75 run function reg:item/get/single_spawn_floating