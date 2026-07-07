data modify storage reg:item this set from storage reg:item reg[{id:"black_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon warden ~ ~ ~ {Tags:["game_clear","boss_wool","boss.warden"],PersistenceRequired:true,Brain:{memories:{"minecraft:dig_cooldown":{value: {}, ttl: 12000000000L}}}}

ride @n[tag=wool.mount] mount @n[type=warden,tag=boss_wool,tag=boss.warden]
execute as @n[type=warden,tag=boss_wool,tag=boss.warden] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=warden,tag=boss_wool,tag=boss.warden] room run data get storage ram: map_cell.urid

bossbar add rcore:boss/warden {text:"监守者",color:"dark_purple"}
bossbar set rcore:boss/warden max 500
bossbar set rcore:boss/warden value 500
bossbar set rcore:boss/warden visible true
bossbar set rcore:boss/warden color red
bossbar set rcore:boss/warden style notched_20
bossbar set rcore:boss/warden players @a[tag=empty_set]