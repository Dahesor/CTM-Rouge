data merge block ~ ~ ~ {SpawnPotentials:[{data:{entity:{id:"pig"},custom_spawn_rules:{block_light_limit:[0,15],sky_light_limit:[0,15]}},weight:100}],Delay:10s,MaxNearbyEntities:7}
execute store result block ~ ~ ~ MaxSpawnDelay short 1 run scoreboard players get $use.max_time calculator.cr
execute store result block ~ ~ ~ MinSpawnDelay short 1 run scoreboard players get $use.min_time calculator.cr
execute store result block ~ ~ ~ SpawnCount short 1 run scoreboard players get $use.spawn_count calculator.cr



data modify storage run: entity set value {id:"pig"}
data modify storage run: entity.id set from storage reg:mob this.type
data modify storage run: entity merge from storage reg:mob this.data
data modify storage run: entity.Tags append value "game_clear"
data modify block ~ ~ ~ SpawnPotentials[0].data.entity set from storage run: entity

data modify block ~ ~ ~ SpawnData set from block ~ ~ ~ SpawnPotentials[0].data