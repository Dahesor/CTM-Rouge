execute unless data storage ram: map[0] run return 1

data modify storage ram: map_cell set from storage ram: map[0]
data modify storage team: cell set from storage ram: map_cell
execute as @a[limit=1,scores={team=1}] run function rcore:stream/game/stair_2_open/edit_map
execute as @a[limit=1,scores={team=2}] run function rcore:stream/game/stair_2_open/edit_map
execute as @a[limit=1,scores={team=3}] run function rcore:stream/game/stair_2_open/edit_map
execute as @a[limit=1,scores={team=4}] run function rcore:stream/game/stair_2_open/edit_map

data remove storage ram: map[0]
function rcore:stream/game/stair_2_open/each_stair