data modify storage reg:item new set value {\
    id:"slow_fall_potion",\
    rarity:"rare",\
    base_price:20,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"potion",\
        components:{potion_contents:{potion:"slow_falling",custom_name:"rc_slowfall"},"!use_remainder":{}}\
    }\
}

function reg:item/reg/new