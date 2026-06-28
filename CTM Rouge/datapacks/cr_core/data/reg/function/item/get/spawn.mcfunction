#Takes in an #item_count@calculator.cr

summon item ~ ~ ~ {Item:{id:"barrier",components:{custom_data:{__temp_item:true},item_model:"air"}},PickupDelay:200s,Age:5990s,Tags:["__temp_item","legal_drop"]}

execute as @e[tag=__temp_item] run function reg:item/get/private/__new_item_self