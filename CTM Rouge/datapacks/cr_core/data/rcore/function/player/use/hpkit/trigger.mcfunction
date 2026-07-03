advancement revoke @s only rcore:use/hpkit

execute unless items entity @s weapon *[custom_data~{item:{class:"hpkit"}}] run return fail

tag @s add using.hpkit

execute if score @s hpkit matches ..-1 run return fail

execute if score @s hpkit matches 2.. run return 1
item replace entity 0-0-0-0-0 container.0 from entity @s weapon
data modify storage ram: item set from entity 0-0-0-0-0 Items[{Slot:0b}]

execute unless score @s hpkit matches 1 run return run function rcore:player/use/hpkit/reset_warm

execute store result score @s hpkit run data get storage ram: item.components."minecraft:custom_data".hpkit.interval
function rcore:player/use/hpkit/heal