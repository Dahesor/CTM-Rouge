tag @s remove __temp_item
tag @s add spawned_item
data modify entity @s Item set from storage reg:item this.stack
data modify entity @s Owner set from storage run: UUID
execute store result entity @s Item.count int 1 run scoreboard players get #item_count calculator.cr
data merge entity @s {PickupDelay:0s,Age:0s}