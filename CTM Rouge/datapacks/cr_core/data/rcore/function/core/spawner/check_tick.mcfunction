execute if block ~ ~ ~ spawner run return fail

#Spawner mined

playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3

say hi

#Room Cleared Check
scoreboard players operation $this room = @s room
kill @s
execute as @e[type=marker,tag=cr.spawner,distance=..100] if score @s room = $this room run return fail

#Room Cleared
data modify storage reg:item this set from storage reg:item reg[{id:"terra_restore"}]
function reg:item/get/single_item_spawn_floating
particle cloud ~ ~ ~ 0.1 0.2 0.1 0.2 30 force @a
playsound entity.player.levelup master @a ~ ~ ~ 1 1.3