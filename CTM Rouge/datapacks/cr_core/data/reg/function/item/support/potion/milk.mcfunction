data modify storage reg:item new set value {\
    id:"milk",\
    rarity:"rare",\
    base_price:10,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:false,\
    stack:{\
        id:"milk_bucket",\
        components:{"!use_remainder":{}}\
    }\
}

function reg:item/reg/new