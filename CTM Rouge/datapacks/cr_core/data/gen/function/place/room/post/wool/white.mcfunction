data modify storage reg:item this set from storage reg:item reg[{id:"white_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon iron_golem ~ ~ ~ {anger_end_time:99999999999999999L,Tags:["boss_wool","game_clear","boss.iron_golem"],attributes:[{base:300d,id:"max_health"},{base:1.2d,id:"scale"}],equipment:{legs:{id:"diamond_leggings",components:{enchantments:{"rcore:proj_pro":1}}}},Health:300.0f,CustomName:"【守护者】"}
ride @n[tag=wool.mount] mount @n[type=iron_golem,tag=boss_wool]
execute as @n[type=iron_golem,tag=boss_wool] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=iron_golem,tag=boss_wool] room run data get storage ram: map_cell.urid


bossbar add rcore:boss/iron_golem "【守护】"
bossbar set rcore:boss/iron_golem max 300
bossbar set rcore:boss/iron_golem value 300
bossbar set rcore:boss/iron_golem visible true
bossbar set rcore:boss/iron_golem color red
bossbar set rcore:boss/iron_golem style notched_10
bossbar set rcore:boss/iron_golem players @a[tag=empty_set]