tag @s remove __temp_item
tag @s add spawned_item
data modify entity @s Item set from storage reg:item this.stack
data merge entity @s {PickupDelay:0s,Age:0s}