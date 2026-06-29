summon item ~ ~ ~ {Item:{id:"barrier",components:{custom_data:{shopDisplayItem:true},item_model:"air"}},PickupDelay:32767s,Age:-32768s,Tags:["__temp_item","legal_drop","game_clear"],Invulnerable:true,NoGravity:true}

execute as @e[tag=__temp_item] run function reg:item/get/private/_model_item_self
