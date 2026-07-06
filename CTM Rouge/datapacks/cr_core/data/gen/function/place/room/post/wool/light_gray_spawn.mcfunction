data modify storage reg:item this set from storage reg:item reg[{id:"light_gray_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

execute as @n[type=item,tag=wool.entity,distance=..10] if items entity @s contents *[custom_data~{item:{id:"light_gray_wool"}}] run tag @s add wool.gravity