data modify storage reg:item new set value {\
    id:"slowness_potion",\
    rarity:"rare",\
    base_price:20,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"splash_potion",\
        components:{potion_contents:{potion:"slowness",custom_name:"rc_slowness"}}\
    }\
}

function reg:item/reg/new