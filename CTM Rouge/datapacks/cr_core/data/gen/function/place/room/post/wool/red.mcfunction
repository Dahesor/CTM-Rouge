data modify storage reg:item this set from storage reg:item reg[{id:"red_wool"}]
function reg:item/get/model/wool

execute summon item_display run function gen:place/room/post/wool/_mount_wool

summon text_display ~ ~ ~ {Tags:["game_clear","boss.target.base"],text:["",{text:"0",color:"yellow"},"/",{text:"18",color:"red"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[3f,3f,3f],translation:[0f,4f,0f]},billboard:"vertical"}
summon snow_golem ~ ~ ~ {NoAI:true,attributes:[{base:1024d,id:"max_health"}],Health:1024f,Tags:["game_clear","boss.target","boss_wool"]}
ride @n[type=snow_golem,tag=boss.target,distance=..4] mount @n[type=text_display,tag=boss.target.base,distance=..4]

ride @n[tag=wool.mount] mount @n[type=snow_golem,tag=boss_wool,tag=boss.target]
execute as @n[type=snow_golem,tag=boss_wool,tag=boss.target] on passengers on passengers run tag @s add wool.locked