data modify storage reg:item this set from storage reg:item reg[{id:"brown_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon husk ~ ~ ~ {Tags:["game_clear","boss_wool","boss.mage"],PersistenceRequired:true,attributes:[{base:1.2d,id:"scale"},{base:400d,id:"max_health"},{base:10d,id:"attack_damage"},{base:0.9d,id:"knockback_resistance"}],Health:400f,equipment:{legs:{id:"diamond_leggings",components:{enchantments:{projectile_protection:4,blast_protection:5}}},mainhand:{id:"blaze_rod",components:{enchantments:{knockback:2}}},offhand:{id:"breeze_rod",components:{enchantment_glint_override:true}},chest:{id:"iron_chestplate"},feet:{id:"golden_boots",components:{enchantments:{protection:1,feather_falling:2}}},head:{id:"paper",components:{item_model:"crouge:mage_head",enchantment_glint_override:true}}},active_effects:[{id:"fire_resistance",amplifier:0b,ambient:0b,show_icon:0b,show_particles:false,duration:-1}],CustomName:{text:"大法师",color:"red"}}

ride @n[tag=wool.mount] mount @n[type=husk,tag=boss_wool,tag=boss.mage]
execute as @n[type=husk,tag=boss_wool,tag=boss.mage] on passengers on passengers run tag @s add wool.locked

execute store result score @n[type=husk,tag=boss_wool,tag=boss.mage] room run data get storage ram: map_cell.urid
execute as @n[type=husk,tag=boss_wool,tag=boss.mage] run function gu:generate
data modify entity @n[type=husk,tag=boss_wool,tag=boss.mage] data.Owner set from storage gu:main out

bossbar add rcore:boss/mage {text:"大法师",color:"red"}
bossbar set rcore:boss/mage max 400
bossbar set rcore:boss/mage value 400
bossbar set rcore:boss/mage visible true
bossbar set rcore:boss/mage color red
bossbar set rcore:boss/mage style notched_12
bossbar set rcore:boss/mage players @a[tag=empty_set]