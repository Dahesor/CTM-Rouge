scoreboard players set #item_count calculator.cr 1

summon item ~ ~ ~ {Item:{id:"barrier",components:{custom_data:{__temp_item:true},item_model:"air"}},PickupDelay:200s,Age:5990s,Tags:["__temp_item"],NoGravity:1b,Invulnerable:1b,Motion:[0d,0d,0d]}

execute as @e[tag=__temp_item] run function reg:item/get/__new_item_self