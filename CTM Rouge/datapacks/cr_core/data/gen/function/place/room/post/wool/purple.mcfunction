data modify storage reg:item this set from storage reg:item reg[{id:"purple_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon enderman ~ ~ ~ {Tags:["game_clear","boss_wool","boss.enderman"],PersistenceRequired:true,CustomName:{text:"和平破坏者",color:"dark_purple"},anger_end_time:999999999999L,attributes:[{base:450d,id:"max_health"},{base:8d,id:"armor"},{base:10d,id:"armor_toughness"},{base:8d,id:"attack_damage"}],Health:450f,active_effects:[{id:"regeneration",duration:-1,ambient:false,show_icon:false,show_particles:false,amplifier:1},{id:"fire_resistance",duration:-1,ambient:false,show_icon:false,show_particles:false,amplifier:1}]}

ride @n[tag=wool.mount] mount @n[type=enderman,tag=boss_wool,tag=boss.enderman]
execute as @n[type=enderman,tag=boss_wool,tag=boss.enderman] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=enderman,tag=boss_wool,tag=boss.enderman] room run data get storage ram: map_cell.urid

bossbar add rcore:boss/enderman {text:"和平破坏者",color:"dark_purple"}
bossbar set rcore:boss/enderman max 450
bossbar set rcore:boss/enderman value 450
bossbar set rcore:boss/enderman visible true
bossbar set rcore:boss/enderman color red
bossbar set rcore:boss/enderman style notched_20
bossbar set rcore:boss/enderman players @a[tag=empty_set]