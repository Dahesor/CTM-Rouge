data modify storage reg:item this set from storage reg:item reg[{id:"yellow_wool"}]

execute positioned ~15.5 ~75 ~15.5 run function reg:item/get/model/wool

execute positioned ~15.5 ~75 ~15.5 summon item_display run function gen:place/room/post/wool/_mount_wool

data modify storage ram: place.id set value "special:wool/yellow_2"
data modify storage ram: place.y set value 36
function gen:place/room/__place with storage ram: place
