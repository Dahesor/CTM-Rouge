execute if score pink_wool.taken data matches 1.. run return run function rcore:core/spawner/monu/terra_restore

scoreboard players operation $this floor = #cleared_room room
scoreboard players operation $this floor /= floor.room_count options

execute store result score #rand calculator.cr run random value 0..99

execute if score #rand calculator.cr matches 99.. if score $this floor matches 1.. run return run function rcore:core/spawner/monu/pink_wool
function rcore:core/spawner/monu/terra_restore