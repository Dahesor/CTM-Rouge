data modify storage reg:item new set value {\
    id:"speed_potion",\
    rarity:"rare",\
    base_price:20,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"potion",\
        components:{potion_contents:{potion:"swiftness",custom_name:"rc_swiftness"},"!use_remainder":{},potion_duration_scale:0.8}\
    }\
}

function reg:item/reg/new