data modify storage reg:item new set value {\
    id:"strength_potion",\
    rarity:"rare",\
    base_price:20,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"potion",\
        components:{potion_contents:{potion:"strength",custom_name:"rc_strength"},"!use_remainder":{},potion_duration_scale:0.6}\
    }\
}

function reg:item/reg/new