data modify storage reg:item this set from storage reg:item reg[{id:"green_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon slime ~ ~ ~ {Tags:["boss_wool","game_clear","boss.slime_king"],Size:25,attributes:[{base:1024d,id:"max_health"},{base:8d,id:"jump_strength"},{base:30d,id:"safe_fall_distance"},{base:1.0d,id:"knockback_resistance"},{base:18d,id:"attack_damage"}],CustomName:{text:"\"史莱姆王\"",color:"green"},Health:1024f,PersistenceRequired:true}


ride @n[tag=wool.mount] mount @n[type=slime,tag=boss_wool,tag=boss.slime_king]

execute as @n[type=slime,tag=boss_wool,tag=boss.slime_king] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=slime,tag=boss_wool,tag=boss.slime_king] room run data get storage ram: map_cell.urid
scoreboard players set @n[type=slime,tag=boss_wool,tag=boss.slime_king] leave_game 1

bossbar add rcore:boss/slime_king {text:"\"史莱姆王\"",color:"green"}
bossbar set rcore:boss/slime_king max 624
bossbar set rcore:boss/slime_king value 624
bossbar set rcore:boss/slime_king visible true
bossbar set rcore:boss/slime_king color red
bossbar set rcore:boss/slime_king style notched_12
bossbar set rcore:boss/slime_king players @a[tag=empty_set]