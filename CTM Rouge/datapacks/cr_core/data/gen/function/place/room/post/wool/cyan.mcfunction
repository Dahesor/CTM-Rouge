data modify storage reg:item this set from storage reg:item reg[{id:"cyan_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon marker ~ ~ ~ {Tags:["game_clear","boss.just.home"]}
execute as @e[limit=1,distance=..3,type=marker,tag=boss.just.home] run function gu:generate
summon stray ~ ~ ~ {Tags:["game_clear","boss_wool","boss.just"],PersistenceRequired:true,attributes:[{base:100d,id:"max_health"}],Health:100f,equipment:{mainhand:{id:"bow",components:{enchantments:{power:2,punch:1}}},head:{id:"jack_o_lantern",components:{enchantment_glint_override:true}},chest:{id:"iron_chestplate"},legs:{id:"leather_leggings"},feet:{id:"netherite_boots"},saddle:{id:"structure_void",components:{equippable:{slot:"saddle",can_be_sheared:false,swappable:false,shearing_sound:"intentionally_empty",equip_sound:"intentionally_empty",equip_on_interact:false,dispensable:false,damage_on_hurt:false},enchantments:{"rcore:justice":1}}}},active_effects:[{id:"invisibility",amplifier:0b,duration:-1,show_particles:false,show_icon:false,ambient:false},{id:"speed",amplifier:0b,duration:-1,show_particles:false,show_icon:false,ambient:false}],data:{Owner:"0-0-0-0-1"}}
data modify entity @e[type=stray,limit=1,distance=..5,tag=boss.just] data.Owner set from storage gu:main out

ride @n[tag=wool.mount] mount @n[type=stray,tag=boss_wool,tag=boss.just]
execute as @n[type=stray,tag=boss_wool,tag=boss.just] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=stray,tag=boss_wool,tag=boss.just] room run data get storage ram: map_cell.urid

bossbar add rcore:boss/just {text:"【裁决官】",color:"blue"}
bossbar set rcore:boss/just max 100
bossbar set rcore:boss/just value 100
bossbar set rcore:boss/just visible true
bossbar set rcore:boss/just color red
bossbar set rcore:boss/just style notched_6
bossbar set rcore:boss/just players @a[tag=empty_set]